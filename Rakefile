# sinatra-rspec

%W{rake rake/testtask rake/rdoctask rcov/rcovtask}.each{|x| require x}
 
begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "decoct"
    s.summary = "Its a simple gem which creates a project structure for sinatra to work with rspec, ZenTest, Snarl(on Windows), RedGreen, Rcov"
    s.email = "anuj@andhapp.com"
    s.homepage = "http://github.com/andhapp/decoct"
    s.description = "Sinatra Rspec project generator"
    s.authors = ["Anuj Dutta"]
    s.add_dependency 'rspec'
    s.add_dependency 'ZenTest'
    s.add_dependency 'ruby-snarl'
    s.add_dependency 'redgreen'
    s.add_dependency 'rcov'
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
 
Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end
 
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'Jeweler'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
 
Rcov::RcovTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
 
task :default => :rcov

