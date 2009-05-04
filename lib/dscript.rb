require File.dirname(__FILE__) + '/../lib/dmeta'

module Decoct
    
    class Dscript
      
      include Decoct::Dmeta

      attr_accessor :app_name
      
      create_dir [:lib, :spec, :views, :public]

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
      end

      def copy_autotest_file
        copy_file(".autotest", "#{app_name}/.autotest") 
      end
      
      def copy_rspec_files
	from = ["spec/spec.opts", "spec/rcov.opts", "spec/spec_helper.rb", "spec/app_spec.rb"]
	to = ["#{app_name}/spec/spec.opts", "#{app_name}/spec/rcov.opts", "#{app_name}/spec/spec_helper.rb", "#{app_name}/spec/#{app_name}_spec.rb"]
	copy_file(from, to)
      end

      def copy_app_file
        copy_file("generic_app.rb", "#{app_name}/#{app_name}.rb")        
      end
      
    end

end
