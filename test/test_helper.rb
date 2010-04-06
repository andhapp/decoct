require File.join(File.dirname(__FILE__), "..", "lib", "decoct")
require "test/unit"
require "fileutils"

require File.expand_path("../../bundler_init", __FILE__)
Bundler.require :test
