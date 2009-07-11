%w{spec spec/interop/test rack/test}.each {|x| require x}

set :environment, :test

describe 'App' do

  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  it "should pick the spec files for autotest and display error messages with growl" do
    get '/'
    last_response.should be_ok
    last_response.body.should == 'It works!!!'
  end

end