class AddExternalIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :external_id, :bigint
  end
end
