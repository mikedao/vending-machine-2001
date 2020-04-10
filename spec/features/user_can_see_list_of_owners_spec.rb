require 'rails_helper'

RSpec.describe "When a user visits the owners index", type: :feature do
  scenario "they see a list of owners" do
    # Owner.create(name: "Sam's Snacks")
    # Owner.create(name: "Drew's Drinks")

    owner1 = create(:owner)
    owner2 = create(:owner)

    visit owners_path

    expect(page).to have_content(owner1.name)
    expect(page).to have_content(owner2.name)
  end
end
