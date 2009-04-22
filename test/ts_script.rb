%W(test/unit redgreen shoulda rr ../lib/dscript fileutils).each{|x| require x}

class TestScript < Test::Unit::TestCase
  
  def dir_in_app_folder
    Dir.entries("epoxys").each {|x| [] << x if !File.directory?(x)}       
  end

  context "creating sinatra app with rspec" do
    setup do
      @script = Dedoct::Dscript.new('epoxys')
      @app_name = @script.app_name
      @script.create_app_dir
    end
    
    should 'create the app directory' do
      assert File.exists?(@app_name)
    end

    should 'create a directory called lib' do
      initial_num_of_dir = dir_in_app_folder().size() 
      @script.create_lib
      final_num_of_dir = dir_in_app_folder().size()
      assert_equal final_num_of_dir, initial_num_of_dir + 1
      assert_not_nil dir_in_app_folder.index("lib") 
    end
    
    should 'create a directory called spec and copy the rspec files' do
      initial_num_of_dir = dir_in_app_folder().size() 
      @script.create_spec
      final_num_of_dir = dir_in_app_folder().size()

      @script.copy_rspec_files
      
      assert File.exists?("#{@app_name}/spec/spec.opts")
      assert File.exists?("#{@app_name}/spec/rcov.opts")
      assert File.exists?("#{@app_name}/spec/spec_helper.rb")

      assert_equal final_num_of_dir, initial_num_of_dir + 1
      assert_not_nil dir_in_app_folder.index("spec") 
    end

    should 'create a directory called views' do
      initial_num_of_dir = dir_in_app_folder().size() 
      @script.create_views
      final_num_of_dir = dir_in_app_folder().size() 
      assert_equal final_num_of_dir, initial_num_of_dir + 1
      assert_not_nil dir_in_app_folder.index("views")
    end

    should 'create a directory called public' do
      initial_num_of_dir = dir_in_app_folder().size() 
      @script.create_public
      final_num_of_dir = dir_in_app_folder().size() 
      assert_equal final_num_of_dir, initial_num_of_dir + 1
      assert_not_nil dir_in_app_folder.index("public")
    end

    should 'copy the .autotest file to app folder' do
      @script.copy_autotest_file
      assert File.exists?("#{@app_name}/.autotest")
    end

    should 'create the app file' do
      @script.create_app_file
      assert File.exists?("#{@app_name}/#{@app_name}.rb")
    end

    teardown do
      FileUtils.rmtree @app_name
    end

  end

  context "raise exception when app name is nil or empty" do
 
    should 'raise an error if there is no app_name is empty' do
      assert_raises(RuntimeError) {@script = Dedoct::Dscript.new('')}   
    end

    should 'raise an error if there is no app_name is nil' do
      assert_raises(RuntimeError) {@script = Dedoct::Dscript.new(nil)}   
    end

  end

end
