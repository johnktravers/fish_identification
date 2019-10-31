class Family < ApplicationRecord
  validates_presence_of :family_code,
                        :name,
                        :english,
                        :genera,
                        :species,
                        :image

  validates_numericality_of :family_code, only_integer: true, greater_than: 0
  validates_numericality_of :genera, only_integer: true, greater_than: 0
  validates_numericality_of :species, only_integer: true, greater_than: 0

  has_many :fish
end
