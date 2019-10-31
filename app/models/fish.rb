class Fish < ApplicationRecord
  validates_presence_of :species_code,
                        :family_code,
                        :genus,
                        :species,
                        :english,
                        :image

  validates_numericality_of :species_code, only_integer: true, greater_than: 0
  validates_numericality_of :family_code, only_integer: true, greater_than: 0

  belongs_to :family
end
