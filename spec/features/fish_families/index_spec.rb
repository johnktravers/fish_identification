require 'rails_helper'

RSpec.describe 'fish family index page', type: :feature do

  before :each do
    @butterflyfish = FishFamily.create(
      name: 'Chaetodontidae',
      english: 'Butterflyfish',
      spanish: 'Pez Mariposa',
      image: 'https://www.fishbase.se/images/thumbnails/gif/tn_CHAETOT0.gif'
    )
    @surgeonfish = FishFamily.create(
      name: 'Acanthuridae',
      english: 'Surgeonfish',
      spanish: 'Pez Cirujano',
      image: 'https://www.fishbase.se/images/thumbnails/gif/tn_ACANTHT1.gif'
    )
  end

  it 'displays a list of all fish families and their images' do
    visit '/fish_families'

    within "#family-#{@butterflyfish.id}" do
      expect(page).to have_content(@butterflyfish.name)
      expect(page).to have_content(@butterflyfish.english)
      expect(page).to have_content(@butterflyfish.spanish)
      expect(page).to have_css("img[src='#{@butterflyfish.image}']")
    end

    within "#family-#{@surgeonfish.id}" do
      expect(page).to have_content(@surgeonfish.name)
      expect(page).to have_content(@surgeonfish.english)
      expect(page).to have_content(@surgeonfish.spanish)
      expect(page).to have_css("img[src='#{@surgeonfish.image}']")
    end
  end

end
