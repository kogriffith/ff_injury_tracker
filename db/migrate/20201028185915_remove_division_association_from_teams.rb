class RemoveDivisionAssociationFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_index :teams, name: "index_teams_on_division_id"
    remove_column :teams, :division_id, :bigint
  end
end
