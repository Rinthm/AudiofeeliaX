class SoundsController < ApplicationController

	def index
		@sounds = Sound.all
	end

	def new
		@sound = Sound.new
	end

	def create

	end

end
