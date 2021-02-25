class CreateVeterinarios < ActiveRecord::Migration[6.1]
  def change
    create_table :veterinarios do |t|
      t.string :nome
      t.string :cpf
      t.string :crmv
      t.string :telefone
      t.string :especialidade

      t.timestamps
    end
  end
end
