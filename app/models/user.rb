class User < ActiveRecord::Base
	has_many :posts
	validates :name, presence:true, length: {maximum: 20}
	VALID_EMAIL_REGEX = /\A[a-zA-Z0-9]\w+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+/i
	validates :email, presence:true, format: {with:VALID_EMAIL_REGEX}

	has_secure_password
	validates :password, length: {minimum: 6, maximum: 20}


	def User.new_remember_token
		SecureRandom.ursafe_base64
	end

	def User.encrypt(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	def create_remember_token
		self.remember_token = User.encrypt(User.new_remember_token)
	end
end
