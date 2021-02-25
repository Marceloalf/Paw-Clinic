class CreateResponsavels < ActiveRecord::Migration[6.1]
  def change
    create_table :responsavels do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.integer :idade
      t.string :sexo

      t.timestamps
    end
  end
end
