class CreateBestEvers < ActiveRecord::Migration
  def change
    create_table :best_evers do |t|
      t.string :user
      t.string :song
      t.string :artist
      t.text :comment

      t.timestamps null: false
    end
  end
end
