class Veterinario < ApplicationRecord
  has_many :consultums, -> { where("data >= ? and deleted_at is null", DateTime.now) }

  validates_presence_of :nome, :cpf, :crmv, :telefone, :especialidade, :sexo, :data_nascimento
  validate :maior_de_idade?

  def maior_de_idade?
    if data_nascimento.present? && data_nascimento > 18.years.ago.to_date
      errors.add(:data_nascimento, 'O veterinário deve ser maior de idade.')
    end
  end
end
