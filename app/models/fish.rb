class Fish < ApplicationRecord
  validates_presence_of :scientific_name
  validates_presence_of :english
  validates_presence_of :spanish
  validates_presence_of :image

  belongs_to :family
end
