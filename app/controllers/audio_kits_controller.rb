class AudioKitsController < ApplicationController

	def index
		@audio_kits = AudioKit.all
	end

	def new
		@audio_kit = AudioKit.new
	end

	def show
		@audio_kit = AudioKit.find(params[:id])
	end

	def create
		@audio_kit = AudioKit.new(audio_kit_params)
	end

	private

	def audio_kit_params
		params.require(:audio_kit).permit(:title, :creator_id)
	end

end
