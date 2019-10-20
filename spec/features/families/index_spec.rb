require 'rails_helper'

RSpec.describe 'family index page', type: :feature do

  before :each do
    @butterflyfish = Family.create(
      name: 'Chaetodontidae',
      english: 'Butterflyfish',
      spanish: 'Pez Mariposa',
      image: 'https://www.fishbase.se/images/thumbnails/gif/tn_CHAETOT0.gif'
    )
    @surgeonfish = Family.create(
      name: 'Acanthuridae',
      english: 'Surgeonfish',
      spanish: 'Pez Cirujano',
      image: 'https://www.fishbase.se/images/thumbnails/gif/tn_ACANTHT1.gif'
    )
  end

  it 'displays a list of all families and their images' do
    visit '/families'

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

  it 'can click on family name to go to the family show page' do
    visit '/families'
    click_link("#{@butterflyfish.name}")
    expect(current_path).to eq("/families/#{@butterflyfish.id}")

    visit '/families'
    click_link("#{@surgeonfish.name}")
    expect(current_path).to eq("/families/#{@surgeonfish.id}")
  end

end
