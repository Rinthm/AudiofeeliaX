class AudioKitsController < ApplicationController

	def index
		@audio_kits = AudioKit.all
	end

	def new
		@audio_kit = AudioKit.new
	end

	def show
		# @audio_kit = AudioKit.find(params[:id])
		@audio_kit = AudioKit.find(1)

	end

	def create

	end

end
