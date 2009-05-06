# Decoct: Quick start Sinatra with Rspec

Decoct is a simple gem that creates a sinatra app directory structure and hooks it up with Rspec.

## Installing

    # Install the gem:
    gem install andhapp-decoct -s http://gems.github.com (on Windows)

## Caveat
  
    The gem has only been tested on Windows and the reason that could be a problem is because it depends upon other
    gems to work properly. I have a workaround in my mind but it has not been implemented as yet.

## Dependencies
    
    The gem depends on the following libraries:
    * rspec
    * ZenTest
    * ruby-snarl  
    * redgreen
    * rcov

    Also, in order to use ruby-snarl you should have <a href="http://www.fullphat.net/index.php">Snarl</a> installed on 
    your machine. 
    Snarl is a messaging system for windows. This would give you nice visual messages on the status of your tests. 
    <a href="http://thewebfellas.com/blog/2007/12/10/rspec-autotest-and-snarl-on-windows">Here's</a> a nice article if you
    would like to incorporate that into rails projects. Hence, the caveat above.

## Usage
    
    Assuming that you have installed the gem. Use the command line and go to the directory where you would like to create
    the new project and run the following command:

    decoct {project-name}

    This would create a sinatra project with all the rspec dependencies. If a directory with the same name exists it will 
    overwrite it. Just go into the directory on your command line and run the following command:

    set RSPEC=true autotest

    and finally run the following command:

    autotest

## Issues
    I have spotted one existing issue with it and it is documented here: 
    <a href="http://github.com/andhapp/decoct/issues">Decoct - Issue1</a>