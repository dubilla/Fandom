class AddOpponents < ActiveRecord::Migration
  def change
    create_table :opponents do |t|
      t.references :team, foreign_key: true, null: false
      t.references :game, foreign_key: true, null: false
      t.boolean :home, default: false, index: true
      t.timestamps null: false
    end
  end
end
