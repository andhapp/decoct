require 'ftools'
require File.dirname(__FILE__) + '/../lib/dconstants'

module Decoct

    include Decoct::Dconstants
    
    # move the creation into a module and just include that module
    class Dscript
      
      attr_accessor :app_name

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
        create_app_file
      end
      
      def create_lib
        create_dir(Dconstants::LIB)  
      end

      def create_spec
        create_dir(Dconstants::SPEC)  
      end

      def create_views
        create_dir(Dconstants::VIEWS)  
      end

      def create_public
        create_dir(Dconstants::PUBLIC)  
      end
      
      def copy_autotest_file
        copy_file(".autotest", "#{app_name}/.autotest") 
      end
      
      def copy_rspec_files
        copy_file("spec/spec.opts", "#{app_name}/spec/spec.opts")
        copy_file("spec/rcov.opts", "#{app_name}/spec/rcov.opts")
        copy_file("spec/spec_helper.rb", "#{app_name}/spec/spec_helper.rb")
      end

      def create_app_file
        copy_file("generic_app.rb", "#{app_name}/#{app_name}.rb")        
      end
      
      def create_app_dir
        create_dir          
      end
      
      private

      def create_dir(value = '')
        path = "#{app_name}/#{value}"
        Dir.mkdir(path) if !test(?d, path) 
      end

      def copy_file(from, to)
        File.copy(Dconstants::TEMPLATES + from, to)
      end

    end

end

