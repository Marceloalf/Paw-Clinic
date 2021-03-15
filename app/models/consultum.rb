class Consultum < ApplicationRecord
  belongs_to :veterinario
  belongs_to :animal

  validates_presence_of :animal_id, :veterinario_id, :data
  validates_associated :animal, :veterinario
end
