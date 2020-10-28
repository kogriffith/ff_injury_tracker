class DropDivisionsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :divisions 
  end
end
