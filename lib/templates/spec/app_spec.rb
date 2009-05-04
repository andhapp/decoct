require "spec"
require "spec/interop/test"
require "sinatra/test"

set :environment, :test

describe 'App' do
  include Sinatra::Test

  it "should pick the spec files for autotest and display error messages with snarl" do
    get '/'
    response.should be_ok
    response.body.should == 'It works!!!'
  end
end