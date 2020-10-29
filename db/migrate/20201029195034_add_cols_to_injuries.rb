class AddColsToInjuries < ActiveRecord::Migration[6.0]
  def change
    add_column :injuries, :turf_type, :string
    add_column :injuries, :expected_recovery_time, :integer
    add_column :injuries, :contact, :boolean 
  end
end
