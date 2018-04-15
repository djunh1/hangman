class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :word
      t.integer :iteration, default: 0
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
