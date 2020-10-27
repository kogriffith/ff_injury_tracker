class RenameTypeFromPlayers < ActiveRecord::Migration[6.0]
  def change
    rename_column :players, :type, :player_type
  end
end
