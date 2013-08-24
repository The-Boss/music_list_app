class CreateMusicInfos < ActiveRecord::Migration
  def change
    create_table :music_infos do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    #add_index :Music, [:user_id, :created_at]
  end
end
