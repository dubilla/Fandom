class AddTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :location
      t.string :nickname
      t.timestamps null: false
    end
  end
end
