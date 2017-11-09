require 'twitter'

class SendTweet
	
	
	
	def initialize(send_tweet)
			@send_tweet = send_tweet
			log_in_twitter
			send_tweet
	end

	def log_in_twitter
		
		client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV ["8bhOWHtmrSdP0jeu9A3HS2drp"]
  config.consumer_secret     = ENV ["oNEglGdpIlSTysVNJT1of2rApXiDnzNw0YPrxU3yfEeOtMgIZET"]
  config.access_token        = ENV ["918087984171376641-BniX8XpWcpzgp4PvxWBdeD3KAIHW2M2"]
  config.access_token_secret = ENV ["yIlPutNvOlx4o2KV4afc48qbArj1oc1kgAdAlMFHC2gno"]
	end	

	

	def send_tweet
		client.update(@tweet)
	end

	

end
end





