require 'rails_helper'

describe 'garments listing page' do
  it 'tells me there are no restaurants' do
    visit '/garments'
    expect(page).to have_content 'No garments yet'
  end
end
