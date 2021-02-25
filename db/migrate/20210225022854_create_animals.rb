class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :nome
      t.string :especie
      t.string :raca
      t.string :complicacoes
      t.integer :idade
      t.string :sexo

      t.timestamps
    end
  end
end
