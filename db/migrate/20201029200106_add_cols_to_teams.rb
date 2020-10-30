class AddColsToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :conference, :string
    add_column :teams, :division, :string
    add_column :teams, :abbreviation, :string
  end
end
