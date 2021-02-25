class Animal < ApplicationRecord
  belongs_to :responsavels
  has_many :consultums
end
