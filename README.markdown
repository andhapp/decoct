Decoct: Quick start Sinatra with Rspec
=====================================

Decoct is a simple gem that creates a sinatra app directory structure and hooks it up with Rspec.

Installing
---------

Install the gem: sudo gem install decoct (on Mac)

Dependencies
-----------

The gem depends on the following libraries:

* rspec
* ZenTest
* redgreen
* rcov


Usage
----

Assuming that you have installed the gem. Use the command line and go to the directory where you would like to create
the new project and run the following command:

decoct {project-name}

This would create a sinatra project with all the rspec dependencies. If a directory with the same name exists it will 
overwrite it. Just go into the directory on your command line and run the following command:

RSPEC=true autotest

Tests
---

In order to run the test, please do ruby -rubygems test/decoct/ts_script.rb which makes the test independent of rubygems. 

Roadmap
---
Capistrano recipe to make it easily deployable 
Add HISTORY file to document the version releases
