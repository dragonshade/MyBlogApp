class SessionsController < ApplicationController
	def new
	end

	def create
		user_params=params[:session]
		user= User.find_by(name: user_params[:name])
		if user && user.authenticate(user_params[:password])
			#if authentication sucessful
			sign_in(user)
			redirect_to posts_url
		else
			redirect_to posts_url
		end
	end

	def destroy
		@current_user = nil
		cookies[:remember_me]=""
		redirect_to posts_url
	end

	

end
