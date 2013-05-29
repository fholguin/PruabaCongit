class Message < ActiveRecord::Base
	Pusher.app_id = 44794
	Pusher.key = '535610b304c5956ea159'
	Pusher.secret = '03a38f5578774d6541ab'

	after_create :send_to_pusher

	def send_to_pusher
		logger.info"Hi?"
		Pusher['chat2013'].trigger("message:create", self.to_json)
	end
end
