module Decoct
    
    class Dscript
      
      include Decoct::Dmeta

      attr_accessor :app_name
      
      create_dir [:lib, :spec, :views, :public, :icons]

      def initialize(app_name)
        fail "app name cannot be nil or empty!!!" if app_name.eql?(nil) || app_name.empty?
        @app_name = app_name      
      end

      def run
        create_app_dir
        create_lib
        create_spec
        create_views
        create_public
        copy_autotest_file
        copy_rspec_files
        copy_app_file
      end
      
      def create_app_dir
        Dir.mkdir("#{app_name}") if !test(?d, "#{app_name}")
        puts "\nCreated application directory - #{app_name}"
      end

      def copy_autotest_file
        copy_file(".autotest", "#{app_name}#{File::SEPARATOR}.autotest")
        puts "\nCopied autotest files" 
      end

      def copy_rspec_files
	from = ["spec#{File::SEPARATOR}spec.opts", "spec#{File::SEPARATOR}rcov.opts", "spec#{File::SEPARATOR}spec_helper.rb", "spec#{File::SEPARATOR}app_spec.rb"]
	to = ["#{app_name}#{File::SEPARATOR}spec#{File::SEPARATOR}spec.opts", "#{app_name}#{File::SEPARATOR}spec#{File::SEPARATOR}rcov.opts", "#{app_name}#{File::SEPARATOR}spec#{File::SEPARATOR}spec_helper.rb", "#{app_name}#{File::SEPARATOR}spec#{File::SEPARATOR}#{app_name}_spec.rb"]
	copy_file(from, to)
  
  file_string = File.open("#{app_name}#{File::SEPARATOR}spec#{File::SEPARATOR}spec_helper.rb") {|f| f.readlines.unshift("require '#{app_name}'\n").join } 
       File.open("#{app_name}#{File::SEPARATOR}spec#{File::SEPARATOR}spec_helper.rb", "w") {|f| f << file_string}
	puts "\nCopied rspec files" 
      end

      def copy_app_file
        copy_file("generic_app.rb", "#{app_name}#{File::SEPARATOR}#{app_name}.rb")
        puts "\nCopied application file" 
      end
      
    end

end
