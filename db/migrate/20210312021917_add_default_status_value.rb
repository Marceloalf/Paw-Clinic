class AddDefaultStatusValue < ActiveRecord::Migration[6.1]
  def change
    change_column :consulta, :finalizada, :boolean,
                  :default => false , :null => false
  end
end
