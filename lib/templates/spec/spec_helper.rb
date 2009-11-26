%w{spec spec/autorun spec/interop/test rack/test}.each {|x| require x}

set :environment, :test

module AppHelper
  include Rack::Test::Methods
  def app; Sinatra::Application; end
end

Spec::Runner.configure do |config|
  config.include AppHelper
end