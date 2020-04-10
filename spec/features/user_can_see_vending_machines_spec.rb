require 'rails_helper'

RSpec.describe "When a user visits the vending machine index", type: :feature do
  scenario "they see a list of vending machine locations" do
    # sam = Owner.create(name: "Sam's Snacks")
    # sam.machines.create(location: "Don's Mixed Drinks")
    # sam.machines.create(location: "Turing Basement")

    sam = create(:owner)

    machine1 = create(:machine, owner: sam)
    machine2 = create(:machine, owner: sam)

    visit owner_machines_path(sam)

    expect(page).to have_content(machine1.location)
    expect(page).to have_content(machine2.location)
  end
end
