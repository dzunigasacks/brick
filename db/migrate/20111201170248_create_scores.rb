class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :player_id, :null => false
      t.integer :game_id

      t.integer :night  ## 1..30
      t.integer :season ## the year e.g. 2011

      t.integer :warps
      t.integer :wimps
      t.boolean :win
      t.boolean :cfb
      t.boolean :come_on
      t.boolean :mystery_factor

      t.timestamps
    end

    add_index :scores, :player_id
    add_index :scores, :season
    add_index :scores, :win
    add_index :scores, :wimps
  end
end
