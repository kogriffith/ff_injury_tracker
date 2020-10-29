class RenameTypeInInjuries < ActiveRecord::Migration[6.0]
  def change
    rename_column :injuries, :type, :injury_type
  end
end
