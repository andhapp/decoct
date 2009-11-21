# sinatra-rspec

%W{rake rake/testtask rake/rdoctask rcov/rcovtask}.each{|x| require x}
 
begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "decoct"
    gem.summary = "Its a simple gem which creates a project structure for sinatra to work with rspec, ZenTest, RedGreen, Rcov"
    gem.email = "anuj@andhapp.com"
    gem.homepage = "http://github.com/andhapp/decoct"
    gem.description = "Sinatra Rspec project generator"
    gem.authors = ["Anuj Dutta"]
    gem.add_dependency 'rspec'
    gem.add_dependency 'ZenTest'
    gem.add_dependency 'redgreen'
    gem.add_dependency 'rcov'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

desc "rake task to run all the tests"   
Rake::TestTask.new do |t|
  t.libs << "lib"
  t.test_files = FileList['test/**/ts_*.rb']
  t.verbose = true
  t.ruby_opts = ['-rubygems']
end

task :default => [:test]