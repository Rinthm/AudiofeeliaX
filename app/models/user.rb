class User < ActiveRecord::Base
  has_secure_password
  has_many :audio_kits, foreign_key: :creator_id
  has_many :sounds, foreign_key: :creator_id

  validates_presence_of :username, :password_digest
  validates_uniqueness_of :username
end
