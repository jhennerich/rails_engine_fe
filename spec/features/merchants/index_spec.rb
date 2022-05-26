require 'rails_helper'
# User Story - Merchants
# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.
RSpec.describe "Merchants Page" do
  it 'should see a list of merchants' do
    visit '/merchants'
    expect(page).to have_content('Schroeder-Jerde')
  end
end
