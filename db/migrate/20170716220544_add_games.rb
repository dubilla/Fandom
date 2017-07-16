class AddGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :starts_at
      t.timestamps null: false
    end
  end
end
