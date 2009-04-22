# Decoct: Quick start Sinatra with Rspec

Decoct is a simple gem that creates a sinatra app directory structure and hooks it up with Rspec.

## Installing

    # Install the gem:
    gem install andhapp-decoct -s http://gems.github.com (on Windows)

## Caveat
  
    The gem has only been tested on Windows and the reason that could be a problem is because it depends upon other gems to work properly. 
I have a workaround in my mind but it has not been implemented as yet.


## Dependencies
    
    The gem depends on the following libraries:
    * rspec
    * ZenTest
    * ruby-snarl  
    * redgreen
    * rcov

    Also, in order to use ruby-snarl you should have [Snarl][http://www.fullphat.net/index.php] installed on your machine. 
Snarl is a messaging system for windows. This would give you nice visual messages on the status of your tests. 
[Here's][http://thewebfellas.com/blog/2007/12/10/rspec-autotest-and-snarl-on-windows] a nice article if you would like to incorporate that into rails projects. Hence, the caveat above.

