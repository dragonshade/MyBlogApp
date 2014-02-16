class SessionsController < ApplicationController
	def new
	end

	def create
		user_params=params[:session]
		user= User.find_by(name: user_params[:name])
		if user && user.authenticate(user_params[:password])
			#if authentication sucessful
			sign_in(user)
			render 'posts/index'
		else
			render 'posts/index'
		end
	end

	def destroy
	end

	

end
