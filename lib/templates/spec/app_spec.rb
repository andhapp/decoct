require File.expand_path(File.dirname(__FILE__) << '/spec_helper.rb')

describe 'App' do  
  it "should pick the main app file and run the spec" do
    get '/'
    last_response.should be_ok
    last_response.body.should == 'It works!!!'
  end
end