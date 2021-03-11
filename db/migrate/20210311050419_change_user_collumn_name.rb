class ChangeUserCollumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :tipo_usario, :tipo_usuario
  end
end
