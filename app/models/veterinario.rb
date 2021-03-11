class Veterinario < ApplicationRecord
  has_many :consultums
  belongs_to :user
end
