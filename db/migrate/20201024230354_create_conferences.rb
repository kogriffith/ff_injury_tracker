class CreateConferences < ActiveRecord::Migration[6.0]
  def change
    create_table :conferences do |t|

      t.string :name, null: false

    end
  end
end
