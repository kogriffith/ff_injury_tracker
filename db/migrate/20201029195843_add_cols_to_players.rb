class AddColsToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :conference, :string
    add_column :players, :division, :string
  end
end
