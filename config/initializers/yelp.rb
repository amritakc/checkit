require 'yelp'

Yelp.client.configure do |config|
  config.consumer_key = ENV["Yelp_Consumer_Key"]
  config.consumer_secret = ENV["Yelp_Consumer_Secret"]
  config.token = ENV["Yelp_Token"]
  config.token_secret = ENV["Yelp_Token_Secret"]
end