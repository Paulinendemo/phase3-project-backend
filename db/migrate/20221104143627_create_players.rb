class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :image
      t.string :position
      t.integer :goals , default: 0
      t.integer :assists , default: 0
      t.integer :team_id
    end
  end
end
