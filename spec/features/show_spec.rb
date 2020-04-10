require 'rails_helper'

describe "vending machine show page" do
  it "displays all of it's snacks as well" do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack_1 = dons.snacks.create(name: "KitKat", price: 1)
    snack_2 = dons.snacks.create(name: "Oreo", price: 1.5)
    snack_3 = dons.snacks.create(name: "Chips", price: 2)

    visit "/machines/#{dons.id}"

    expect(page).to have_content("#{snack_1.name} - $#{snack_1.price}")
    expect(page).to have_content("#{snack_2.name} - $#{snack_2.price}")
    expect(page).to have_content("#{snack_3.name} - $#{snack_3.price}")

    expect(page).to have_content("Average Price: $1.5")

  end
end
