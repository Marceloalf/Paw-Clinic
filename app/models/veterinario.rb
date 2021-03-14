class Veterinario < ApplicationRecord
  has_many :consultums
  belongs_to :user

  validates_presence_of :sexo, :data_nascimento, :user, :cpf, :crmv
end
