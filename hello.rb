require "sinatra"
require "iodized2_ruby_client"

iodized = Iodized2RubyClient.new("ws://localhost:4000/features_socket/websocket")

get "/" do
  erb :hello, locals: {awesome_feature: iodized.enabled?('awesome_feature') }
end

get "/features" do
  erb :features, locals: { features: iodized.features}
end
