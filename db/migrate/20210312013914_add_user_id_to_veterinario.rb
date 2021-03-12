class AddUserIdToVeterinario < ActiveRecord::Migration[6.1]
  def change
    add_column :veterinarios, :user_id, :integer
  end
end
