class Sound < ActiveRecord::Base
	belongs_to :creator, class_name: "User"
	belongs_to :audio_kit

	validates_presence_of :title, :creator_id
end
