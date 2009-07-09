Decoct: Quick start Sinatra with Rspec
=====================================

Decoct is a simple gem that creates a sinatra app directory structure and hooks it up with Rspec.

Installing
---------

Install the gem: gem install andhapp-decoct -s http://gems.github.com (on Windows)

Dependencies
-----------

The gem depends on the following libraries:

* rspec
* ZenTest
* growl  
* redgreen
* rcov

growl is the Mac OS X messaging system and there are a plethora of articles detailing its installation. Google 'growl Mac OS X' and you would definately encounter some useful results.


Usage
----

Assuming that you have installed the gem. Use the command line and go to the directory where you would like to create
the new project and run the following command:

decoct {project-name}

This would create a sinatra project with all the rspec dependencies. If a directory with the same name exists it will 
overwrite it. Just go into the directory on your command line and run the following command:

RSPEC=true autotest

and finally run the following command:

autotest

Issues
-----

I have spotted one existing issue with it and it is documented here: 
[Decoct - Issue1][issue].

[issue]: http://github.com/andhapp/decoct/issues 