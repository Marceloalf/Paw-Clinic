class RenameIdadeToDataNascimentoAnimal < ActiveRecord::Migration[6.1]
  def change
    rename_column :animals, :idade, :data_nascimento
  end
end
