class CreateSounds < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
    	t.string :title, null: false
    	t.text :description
    	t.integer :creator_id, null: false
    	t.integer :audio_kit_id

      t.timestamps null: false
    end
  end
end
