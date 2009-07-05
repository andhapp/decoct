# sinatra-rspec

%W{rake rake/testtask rake/rdoctask rcov/rcovtask}.each{|x| require x}
 
begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "decoct"
    gem.summary = "Its a simple gem which creates a project structure for sinatra to work with rspec, ZenTest, Growl, RedGreen, Rcov"
    gem.email = "anuj@andhapp.com"
    gem.homepage = "http://github.com/andhapp/decoct"
    gem.description = "Sinatra Rspec project generator"
    gem.authors = ["Anuj Dutta"]
    gem.files.include %w(lib/icons/*.*)
    gem.add_dependency 'rspec'
    gem.add_dependency 'ZenTest'
    gem.add_dependency 'growl'
    gem.add_dependency 'redgreen'
    gem.add_dependency 'rcov'
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
