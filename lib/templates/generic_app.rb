$LOAD_PATH.unshift File.dirname(__FILE__) + '/../sinatra/lib'

%w{rubygems sinatra}.each {|x| require x}

get '/' do
  'Congratulations!!! You have successfully installed decoct.'
end
