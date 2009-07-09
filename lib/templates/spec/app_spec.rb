require "spec"
require "spec/interop/test"
require "rack/test"

set :environment, :test

describe 'App' do
  include Rack::Test::Methods

  it "should pick the spec files for autotest and display error messages with growl" do
    get '/'
    last_response.should be_ok
    last_response.body.should == 'It works!!!'
  end
end