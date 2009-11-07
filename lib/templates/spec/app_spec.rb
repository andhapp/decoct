describe 'App' do  
  it "should pick the spec files for autotest and display error messages with growl" do
    get '/'
    last_response.should be_ok
    last_response.body.should == 'It works!!!'
  end
end