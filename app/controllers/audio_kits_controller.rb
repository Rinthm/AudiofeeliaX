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
		if @audio_kit.save
			flash[:success] = "Audio Kit successfully saved. Add some sounds!"
			redirect_to @audio_kit
		else
			flash[:danger] = "Something went wrong. Never give up..."
			render 'new'
		end
	end

	private

	def audio_kit_params
		params.require(:audio_kit).permit(:title, :description, :creator_id)
	end

end
