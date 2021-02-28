class Animal < ApplicationRecord
  belongs_to :responsavel
  has_many :consultums

  validates_presence_of :responsavel_id
  validates_associated :responsavel
end
