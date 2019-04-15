require "sinatra"

get "/" do
  erb :hello, locals: {awesome_feature: false}
end
