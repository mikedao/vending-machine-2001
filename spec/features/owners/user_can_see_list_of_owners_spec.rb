require "rails_helper"

RSpec.describe "When a user visits the owners index", type: :feature do
  scenario "they see a list of owners" do
    Owner.create(name: "Sam's Snacks")
    Owner.create(name: "Drew's Drinks")

    visit owners_path

    expect(page).to have_content("Sam's Snacks")
    expect(page).to have_content("Drew's Drinks")
  end
end
