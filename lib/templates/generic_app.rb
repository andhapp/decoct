$LOAD_PATH.unshift File.dirname(__FILE__) + '/../sinatra/lib'

%w{rubygems sinatra}.each {|x| require x}

get '/' do
  'It works!!!'
end
