require "sinatra"
require "iodized2_ruby_client"

iodized_url = ENV.fetch("IODIZED_URL", "ws://localhost:4000/features_socket/websocket")
iodized_key = ENV.fetch("IODIZED_KEY", "key")
iodized_secret = ENV.fetch("IODIZED_SECRET", "secret")
iodized = Iodized2RubyClient.new(iodized_url, iodized_key, iodized_secret)

get "/" do
  erb :hello, locals: {awesome_feature: iodized.enabled?('awesome_feature') }
end

get "/features" do
  erb :features, locals: { features: iodized.features}
end
