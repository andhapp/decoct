require 'ftools'
require File.join(File.dirname(__FILE__), "..", 'lib', 'dconstants')

module Decoct
	module Dmeta

		include Decoct::Dconstants

		def copy_file(from, to)
			if from.is_a?(Array) && to.is_a?(Array)
				from.each_index {|i| copy_file(from[i], to[i])}
			else
				File.copy(Dconstants::TEMPLATES + from, to)
			end
		end

		module ClassMethods
			def create_dir(name)
				if name.is_a?(Array)
					name.map {|x| create_dir(x)}
				else
					attr_reader name
					define_method("create_#{name}") do
						path = "#{app_name}#{File::SEPARATOR}#{name}"
						Dir.mkdir(path) if !test(?d, path)  
					end
				end
			end
		end

		def self.included(host_class)
			host_class.extend(ClassMethods)
		end

	end
end