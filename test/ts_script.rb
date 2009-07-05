%w(rubygems redgreen test/unit shoulda fileutils).each{|x| require x}
require File.join(File.dirname(__FILE__), "..", 'lib', 'dscript')

class TestScript < Test::Unit::TestCase
  
  def dir_in_app_folder
    Dir.entries("epoxys").each {|x| [] << x if !File.directory?(x)}
  end

  context "creating a brand new sinatra-rspec app" do
    setup do
      @script = Decoct::Dscript.new('epoxys')
      @app_name = @script.app_name
      @script.create_app_dir
    end
    
    should 'create the app directory' do
      assert File.exists?(@app_name)
    end

    should 'create a directory called lib' do
      @script.create_lib
      assert_not_nil dir_in_app_folder.index("lib") 
    end
    
    should 'create a directory called spec and copy the rspec files' do
      @script.create_spec
      @script.copy_rspec_files
      
      assert File.exists?("#{@app_name}#{File::SEPARATOR}spec#{File::SEPARATOR}spec.opts")
      assert File.exists?("#{@app_name}#{File::SEPARATOR}spec#{File::SEPARATOR}rcov.opts")
      assert File.exists?("#{@app_name}#{File::SEPARATOR}spec#{File::SEPARATOR}spec_helper.rb")
      assert File.exists?("#{@app_name}#{File::SEPARATOR}spec#{File::SEPARATOR}#{@app_name}_spec.rb")

      assert_not_nil dir_in_app_folder.index("spec") 
    end

    should 'create a directory called views' do
      @script.create_views
      assert_not_nil dir_in_app_folder.index("views")
    end

    should 'create a directory called public' do
      @script.create_public
      assert_not_nil dir_in_app_folder.index("public")
    end

    should 'copy the .autotest file to app folder' do
      @script.copy_autotest_file
      assert File.exists?("#{@app_name}#{File::SEPARATOR}.autotest")
    end

    should 'copy the app file' do
      @script.copy_app_file
      assert File.exists?("#{@app_name}#{File::SEPARATOR}#{@app_name}.rb")
    end
    
    should 'copy the icons' do
      @script.create_icons
      @script.copy_icons
      assert File.exists?("#{@app_name}#{File::SEPARATOR}icons#{File::SEPARATOR}fail.png")
      assert File.exists?("#{@app_name}#{File::SEPARATOR}icons#{File::SEPARATOR}ok.png")
    end
    
    teardown do
      FileUtils.rmtree @app_name
    end

  end

  context "raise exception when app name is nil or empty" do
 
    should 'raise an error if there is app_name is empty' do
      assert_raises(RuntimeError) {Decoct::Dscript.new('')}   
    end

    should 'raise an error if there is app_name is nil' do
      assert_raises(RuntimeError) {Decoct::Dscript.new(nil)}   
    end

  end
 
end
