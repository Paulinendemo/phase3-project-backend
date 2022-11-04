class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo
      t.integer :matches_played , default: 0
      t.integer :matches_won , default: 0
      t.integer :matches_lost , default: 0
      t.integer :matches_drawn , default: 0
      t.integer :points , default: 0
      t.string :coach


      t.timestamps
    end
  end
end
