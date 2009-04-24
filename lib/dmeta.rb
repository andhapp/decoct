require 'ftools'
require File.dirname(__FILE__) + '/../lib/dconstants'

module Decoct
  module Dmeta
    
    include Decoct::Dconstants

    def copy_file(from, to)
      File.copy(Dconstants::TEMPLATES + from, to)    
    end

    module ClassMethods
      def create_dir(name)
        attr_reader name
        define_method("create_#{name}") do
          path = "#{app_name}/#{name}"
          Dir.mkdir(path) if !test(?d, path)  
        end
      end
    end

    def self.included(host_class)
      host_class.extend(ClassMethods)
    end

  end
end
