class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_username(params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:success] = "'Oh shit... #{user.username} is here... Get ready for some sick sounds!'"
			redirect_to audio_kits_path
		else
			flash[:danger] = "Login failed. Please try again!"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:success] = "See ya later!"
		redirect_to audio_kits_path
	end

end
