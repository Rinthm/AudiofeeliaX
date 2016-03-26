class AudioKit < ActiveRecord::Base
	belongs_to :creator, class_name: "User"
	has_many :sounds

	validates_presence_of :title, :creator_id
end
