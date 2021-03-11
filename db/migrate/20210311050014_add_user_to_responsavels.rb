class AddUserToResponsavels < ActiveRecord::Migration[6.1]
  def change
    add_column :responsavels, :user_id, :integer
  end
end
