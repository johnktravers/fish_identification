require 'rails_helper'

RSpec.describe Fish, type: :model do

  describe 'validations' do
    it { should validate_presence_of :scientific_name }
    it { should validate_presence_of :english }
    it { should validate_presence_of :spanish }
    it { should validate_presence_of :image }
  end

  describe 'relationships' do
    it { should belong_to :fish_family }
  end

end
