class Tweet < ActiveRecord::Base
  attr_accessible :message, :url, :user

  Twitter.configure do |config|
  	config.consumer_key = 'eZeMz4CE3Oa8FdfNAOp4w'
  	config.consumer_secret = 'm87bQLwx6eyphs8xXQJgZ549EevSSq2RONox1yPCqS8'
  	config.oauth_token = '1444710750-UlPh3shGM4JVINAoZEdB1Q0kDRfrTDPKdupiFgQ'
  	config.oauth_token_secret = 'dH5lvqmexhAFh6G8O6s9lkKNoHYl3gZtyVpZYVa7T4'
	end

	def read_message
		return "no hay user" if self.user.blank?
		Twitter.user_timeline(self.user).first.text
	end

end
