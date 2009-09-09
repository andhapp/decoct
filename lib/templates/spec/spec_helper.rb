require 'spec/autorun'

set :environment, :test

module AppHelper
  def app; Sinatra::Application end
end

include Rack::Test::Methods
include AppeHelper

Spec::Runner.configure do |config|
end