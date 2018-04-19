class RemoveLetterFromTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :letter
  end
end
