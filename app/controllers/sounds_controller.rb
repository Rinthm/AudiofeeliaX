class SoundsController < ApplicationController

	def index
		@sounds = Sound.all
	end

	def new
		@sound = Sound.new
	end

	def create
		sound = Sound.new(sound_params)
		if sound.save
			flash[:success] = "Sound saved!"
			redirect_to audio_kit_path(id: sound.audio_kit_id)
		else
			flash[:danger] = "Something went wrong while creating your sound."
			render 'new'
		end
	end

	private

	def sound_params
		params.require(:sound).permit(:title, :creator_id, :audio_kit_id, :audio_file)
	end

end
