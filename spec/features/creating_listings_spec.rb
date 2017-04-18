require 'spec_helper'


RSpec.feature "users can create a new listing" do
  before do
    visit '/'
    click_link "New Listing"
  end

  scenario "with valid attributes" do
    fill_in "Quantity", with: 6
    fill_in "Species", with: "Native Honey Bee"
    click_button "Create Listing"

    expect(page).to have_content "Listing has been created"
    expect(page).to have_content "Native Honey Bee"
  end

  scenario 'with invalid attributes' do
    click_button "Create Listing"
    expect(page).to have_content  "Listing has not been created"

  end
end
