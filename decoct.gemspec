# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{decoct}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Anuj Dutta"]
  s.date = %q{2009-11-26}
  s.default_executable = %q{decoct}
  s.description = %q{Sinatra Rspec project generator}
  s.email = %q{anuj@andhapp.com}
  s.executables = ["decoct"]
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "README.markdown",
     "Rakefile",
     "VERSION",
     "bin/decoct",
     "decoct.gemspec",
     "lib/decoct.rb",
     "lib/decoct/dconstants.rb",
     "lib/decoct/dmeta.rb",
     "lib/decoct/dscript.rb",
     "lib/templates/.autotest",
     "lib/templates/generic_app.rb",
     "lib/templates/spec/app_spec.rb",
     "lib/templates/spec/rcov.opts",
     "lib/templates/spec/spec.opts",
     "lib/templates/spec/spec_helper.rb",
     "pkg/decoct-0.1.0.gem",
     "test/decoct/ts_script.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/andhapp/decoct}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Its a simple gem which creates a project structure for sinatra to work with rspec, ZenTest, RedGreen, Rcov}
  s.test_files = [
    "test/decoct/ts_script.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<ZenTest>, [">= 0"])
      s.add_runtime_dependency(%q<redgreen>, [">= 0"])
      s.add_runtime_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<ZenTest>, [">= 0"])
      s.add_dependency(%q<redgreen>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<ZenTest>, [">= 0"])
    s.add_dependency(%q<redgreen>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
