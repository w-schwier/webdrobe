require 'rails_helper'

describe 'restaurants listing page' do
  it 'tells me there are no restaurants' do
    visit '/restaurants'
    expect(page).to have_content 'No restaurants yet'
  end
end
