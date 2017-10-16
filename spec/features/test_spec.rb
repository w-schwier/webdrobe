require 'rails_helper'

feature 'garments' do
  context 'no garments have been added' do
    scenario 'should display a prompt to add a garment' do
      visit '/garments'
      expect(page).to have_content 'No garments yet'
      expect(page).to have_link 'New Garment'
    end
  end
end
