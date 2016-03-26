class CreateAudioKits < ActiveRecord::Migration
  def change
    create_table :audio_kits do |t|
    	t.string :title, null: false
    	t.text :description
    	t.integer :creator_id, null: false

      t.timestamps null: false
    end
  end
end
