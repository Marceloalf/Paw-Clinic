class RemoverIdadeDoVeterinario < ActiveRecord::Migration[6.1]
  def change
    remove_column :veterinarios, :idade
    add_column :veterinarios, :data_nascimento, :date
  end
end
