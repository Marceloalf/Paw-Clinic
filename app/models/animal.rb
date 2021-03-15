class Animal < ApplicationRecord
  belongs_to :responsavel
  has_many :consultums

  validates_presence_of :responsavel_id, :nome, :especie, :raca, :data_nascimento, :sexo
  validates_associated :responsavel
end
