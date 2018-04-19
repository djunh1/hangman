class AddGuessesToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :guess, :integer, default: 0
  end
end
