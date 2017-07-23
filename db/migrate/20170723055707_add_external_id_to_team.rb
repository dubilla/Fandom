class AddExternalIdToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :external_id, :integer, null: false, index: true
  end
end
