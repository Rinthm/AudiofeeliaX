class AddAudioFileUidToSounds < ActiveRecord::Migration
  def change
  	add_column :sounds, :audio_file_uid, :string
  end
end
