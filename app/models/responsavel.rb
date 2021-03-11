class Responsavel < ApplicationRecord
  has_many :animals
  belongs_to :user
end
