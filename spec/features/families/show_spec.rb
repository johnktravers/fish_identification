require 'rails_helper'

RSpec.describe 'family show page', type: :feature do

  before :each do
    @butterflyfish = Family.create(
      name: 'Chaetodontidae',
      english: 'Butterflyfish',
      spanish: 'Pez Mariposa',
      image: 'https://www.fishbase.se/images/thumbnails/gif/tn_CHAETOT0.gif'
    )
    @forcepsfish = @butterflyfish.fish.create(
      scientific_name: 'Forcipiger flavissimus',
      english: 'Forcepsfish',
      spanish: 'Mariposa Hocicona',
      image: 'https://www.fishbase.se/images/species/Fofla_u6.jpg'
    )
    @banded = @butterflyfish.fish.create(
      scientific_name: 'Chaetodon humeralis',
      english: 'Threebanded Butterflyfish',
      spanish: 'Mariposa Muñeca',
      image: 'https://www.fishbase.se/photos/workimagethumb.php?s=http://www.fishbase.se/tools/UploadPhoto/uploads/1435108272_108.64.185.41.jpg&w=600'
    )

    @angelfish = Family.create(
      name: 'Pomacanthidae',
      english: 'Angelfish',
      spanish: 'Pez Ángel',
      image: 'https://www.fishbase.se/images/thumbnails/gif/tn_POMACAT0.gif'
    )
    @cortes = @angelfish.fish.create(
      scientific_name: 'Pomacanthus zonipectus',
      english: 'Cortez Angelfish',
      spanish: 'Ángel de Cortés',
      image: 'https://www.fishbase.se/images/species/Pozon_u4.jpg'
    )
  end

  it 'displays a list of all fish in its family and their info' do
    visit "/families/#{@butterflyfish.id}"

    within "#fish-#{@forcepsfish.id}" do
      expect(page).to have_content(@forcepsfish.scientific_name)
      expect(page).to have_content(@forcepsfish.english)
      expect(page).to have_content(@forcepsfish.spanish)
      expect(page).to have_css("img[src='#{@forcepsfish.image}']")
    end

    within "#fish-#{@banded.id}" do
      expect(page).to have_content(@banded.scientific_name)
      expect(page).to have_content(@banded.english)
      expect(page).to have_content(@banded.spanish)
      expect(page).to have_css("img[src='#{@banded.image}']")
    end

    expect(page).to_not have_css("#fish-#{@cortes.id}")
  end

end
