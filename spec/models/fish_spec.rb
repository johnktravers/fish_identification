require 'rails_helper'

RSpec.describe Fish, type: :model do

  describe 'validations' do
    it { should validate_presence_of :species_code }
    it { should validate_presence_of :family_code }
    it { should validate_presence_of :genus }
    it { should validate_presence_of :species }
    it { should validate_presence_of :english }
    it { should validate_presence_of :image }

    it { should validate_numericality_of(:species_code).only_integer }
    it { should validate_numericality_of(:family_code).only_integer }

    it { should validate_numericality_of(:species_code).is_greater_than(0) }
    it { should validate_numericality_of(:family_code).is_greater_than(0) }
  end

  describe 'relationships' do
    it { should belong_to :family }
  end

end
