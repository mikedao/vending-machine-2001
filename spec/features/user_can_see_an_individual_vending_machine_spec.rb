require 'rails_helper'

RSpec.describe 'When a user visits a vending machine show page', type: :feature do
  scenario 'they see the location of that machine' do
    # owner = Owner.create(name: "Sam's Snacks")
    # dons  = owner.machines.create(location: "Don's Mixed Drinks")

    owner1 = create(:owner)
    dons  = create(:machine, owner: owner1)

    visit machine_path(dons)

    expect(page).to have_content("#{dons.location} Vending Machine")
  end
end
