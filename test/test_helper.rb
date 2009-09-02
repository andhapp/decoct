$: << File.join(File.dirname(__FILE__), "/../lib")

%w(redgreen test/unit shoulda fileutils).each{|x| require x}

require 'decoct'