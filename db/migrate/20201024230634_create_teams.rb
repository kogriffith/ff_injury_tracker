class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|

      t.belongs_to :division
      t.string :name, null: false

    end
  end
end
