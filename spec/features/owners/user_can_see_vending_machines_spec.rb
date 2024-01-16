require "rails_helper"

RSpec.describe "When a user visits the vending machine index", type: :feature do
  scenario "they see a list of vending machine locations" do
    sam = Owner.create(name: "Sam's Snacks")
    sam.machines.create(location: "Don's Mixed Drinks")
    sam.machines.create(location: "Turing Basement")

    visit owner_machines_path(sam)

    expect(page).to have_content("Don's Mixed Drinks")
    expect(page).to have_content("Turing Basement")
  end
end
