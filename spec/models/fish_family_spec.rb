require 'rails_helper'

RSpec.describe FishFamily, type: :model do

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :english }
    it { should validate_presence_of :spanish }
    it { should validate_presence_of :image }
  end

end
