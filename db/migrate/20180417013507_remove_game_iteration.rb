class RemoveGameIteration < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :iteration
  end
end
