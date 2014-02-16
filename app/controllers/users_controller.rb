class UsersController < ApplicationController
	def login
		user=User.find_by(name: user_param[:name])
		if user && user.authenticate(user_param[:password])

		else
			flash.now[:error]= "No such user or incorrect password"
			render 'posts/index'
		end

	end


	private

	def user_param
		params.require(:user).permit(:name,:password)
	end


end
