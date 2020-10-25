class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|

      t.belongs_to :conference
      t.string :name, null: false

    end
  end
end
