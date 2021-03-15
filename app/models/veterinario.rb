class Veterinario < ApplicationRecord
  has_many :consultums, -> { where("data >= ? and deleted_at is null", DateTime.now) }

  belongs_to :user

  validates_presence_of :sexo, :data_nascimento, :user, :cpf, :crmv
end
