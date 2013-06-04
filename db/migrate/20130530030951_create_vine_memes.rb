class CreateVineMemes < ActiveRecord::Migration
  def change
    create_table :vine_memes do |t|
      t.string :token
      t.string :url
      t.string :top
      t.string :bottom

      t.timestamps
    end
  end
end
