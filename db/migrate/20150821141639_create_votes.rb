class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :song_id
      t.integer :artist_id
      t.integer :rank

      t.timestamps null: false
    end
  end
end
