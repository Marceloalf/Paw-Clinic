class CreateConsulta < ActiveRecord::Migration[6.1]
  def change
    create_table :consulta do |t|
      t.datetime :data
      t.string :sintomas
      t.string :prescricao
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
