class AddNullConstraintToSounds < ActiveRecord::Migration
  def change
  	change_column :sounds, :audio_kit_id, :integer, null: false
  end
end
