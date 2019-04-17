require "sinatra"

get "/" do
  feature_on = params[:awesome_feature] == "on"
  erb :hello, locals: {awesome_feature: feature_on}
end
