class Veterinario < ApplicationRecord
  has_many :consultums, -> { where("data >= ? and deleted_at is null", DateTime.now) }

  validates_presence_of :nome, :cpf, :crmv, :telefone, :especialidade, :sexo, :data_nascimento
end
