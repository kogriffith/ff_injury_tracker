class DropConferencesTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :conferences
  end
end
