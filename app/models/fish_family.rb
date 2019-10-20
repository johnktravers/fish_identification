class FishFamily < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :english
  validates_presence_of :spanish
  validates_presence_of :image
end
