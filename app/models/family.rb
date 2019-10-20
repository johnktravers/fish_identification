class Family < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :english
  validates_presence_of :spanish
  validates_presence_of :image

  has_many :fish
end
