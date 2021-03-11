class RemoverIdadeDoAnimal < ActiveRecord::Migration[6.1]
  def change
    remove_column :animals, :idade
    add_column :animals, :idade, :date
  end
end
