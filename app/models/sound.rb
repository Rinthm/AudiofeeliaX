class Sound < ActiveRecord::Base 
	belongs_to :creator, class_name: "User"
	belongs_to :audio_kit

	dragonfly_accessor :audio_file

	validates_presence_of :title, :creator_id, :audio_kit_id
end
