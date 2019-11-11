require 'rails_helper'

RSpec.describe Family, type: :model do

  describe 'validations' do
    it { should validate_presence_of :family_code }
    it { should validate_presence_of :name }
    it { should validate_presence_of :english }
    it { should validate_presence_of :genera }
    it { should validate_presence_of :species }
    it { should validate_presence_of :image }

    it { should validate_numericality_of(:family_code).only_integer }
    it { should validate_numericality_of(:genera).only_integer }
    it { should validate_numericality_of(:species).only_integer }

    it { should validate_numericality_of(:family_code).is_greater_than(0) }
    it { should validate_numericality_of(:genera).is_greater_than(0) }
    it { should validate_numericality_of(:species).is_greater_than(0) }
  end

  describe 'relationships' do
    it { should have_many :fish }
  end

end
