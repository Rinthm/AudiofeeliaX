class SoundsController < ApplicationController

	def index
		@sounds = Sound.all
	end

	def new
		@sound = Sound.new
	end

	def create
		@sound = Sound.new(sound_params)
		@sound.creator_id = current_user.id
		@sound.audio_kit_id = 1
		if @sound.save
			flash[:success] = "Sound saved!"
			redirect_to audio_kit
		else
			flash[:danger] = "Something went wrong while creating your sound."
			render 'new'
		end
	end

	private

	def sound_params
		params.require(:sound).permit(:title, :audio_file)
	end

end
