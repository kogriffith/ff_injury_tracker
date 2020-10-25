class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      
      t.belongs_to :team
      t.string :name, null: false
      t.string :type, null: false
      t.string :position, null: false
      t.date :birthday, null: false
      t.integer :time_in_league, null: false

      t.timestamps

    end
  end
end
