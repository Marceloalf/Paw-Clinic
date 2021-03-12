class AddStatuDaConsulta < ActiveRecord::Migration[6.1]
  def change
    remove_column :consulta, :animal_id
  end
end
