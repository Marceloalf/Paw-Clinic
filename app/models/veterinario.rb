class Veterinario < ApplicationRecord
  has_many :consultums,  -> { where "finalizada = false and deleted_at is null" }
  belongs_to :user

  validates_presence_of :sexo, :data_nascimento, :user, :cpf, :crmv
end
