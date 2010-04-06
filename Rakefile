require File.expand_path("../bundler_init", __FILE__)
Bundler.require :default

begin
  require 'jeweler'
  
  desc "Task to build a gemspec file"
  Jeweler::Tasks.new do |gem|
    gem.name = "decoct"
    gem.summary = "Its a simple gem which creates a project structure for sinatra."
    gem.email = "anuj@andhapp.com"
    gem.homepage = "http://github.com/andhapp/decoct"
    gem.description = "Sinatra Rspec project generator"
    gem.authors = ["Anuj Dutta"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Add gem 'jeweler' to your Gemfile and run bundle install vendor."
end

begin
  require "rake/testtask"
  
  desc "rake task to run all the tests"   
  Rake::TestTask.new do |t|
    t.libs << "lib"
    t.test_files = FileList['test/**/ts_*.rb']
    t.verbose = true
    t.ruby_opts = ['-rubygems']
  end
rescue LoadError
  puts "Rake not available. Add gem 'rake' to your Gemfile and run bundle install vendor."
end

task :default => [:test]