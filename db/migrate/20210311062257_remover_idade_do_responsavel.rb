class RemoverIdadeDoResponsavel < ActiveRecord::Migration[6.1]
  def change
    remove_column :responsavels, :idade
    add_column :responsavels, :data_nascimento, :date
  end
end
