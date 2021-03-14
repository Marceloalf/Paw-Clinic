class FixAddAnimalId < ActiveRecord::Migration[6.1]
  def change
    add_column :consulta, :animal_id, :integer
  end
end
