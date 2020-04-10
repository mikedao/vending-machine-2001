require 'rails_helper'

describe "snack show page" do
  it "displays name, price" do
    owner = Owner.create(name: "Sam's Snacks")
    turing = owner.machines.create(location: "Turing Basement")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    kings  = owner.machines.create(location: "King Sooper")
    snack_1 = Snack.create(name: "KitKat", price: 1)
    snack_2 = Snack.create(name: "Oreo", price: 1.5)
    snack_3 = Snack.create(name: "Chips", price: 2)
    snack_4 = Snack.create(name: "Golden Chocolate", price: 49)

    dons.add_snack(snack_3)
    dons.add_snack(snack_2)
    dons.add_snack(snack_1)

    turing.add_snack(snack_1)
    turing.add_snack(snack_3)

    kings.add_snack(snack_1)
    kings.add_snack(snack_4)

    visit "/snacks/#{snack_1.id}"

    expect(page).to have_content(snack_1.name)
    expect(page).to have_content(snack_1.price)
    expect(page).to have_content("#{turing.location} (2 kinds of snacks, average price of $1.50)")
    expect(page).to have_content("#{dons.location} (3 kinds of snacks, average price of $1.50)")
    expect(page).to have_content("#{kings.location} (2 kinds of snacks, average price of $25.00)")
  end
end
