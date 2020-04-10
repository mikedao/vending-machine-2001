require 'rails_helper'

describe "snack show page" do
  it "displays name, price" do
    owner = Owner.create(name: "Sam's Snacks")
    turing = owner.machines.create(location: "Turing Basement")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack_1 = Snack.create(name: "KitKat", price: 1)
    snack_2 = Snack.create(name: "Oreo", price: 1.5)
    snack_3 = Snack.create(name: "Chips", price: 2)

    dons.add(snack_3)
    dons.add(snack_2)
    dons.add(snack_1)

    turing.add(snack_1)
    turing.add(snack_3)

    # MachineSnack.create(machine_id: dons.id, snack_id: snack_1.id)
    # MachineSnack.create(machine_id: turing.id, snack_id: snack_4.id)

    visit "/snacks/#{snack_1.id}"

    expect(page).to have_content(snack_1.name)
    expect(page).to have_content(snack_1.price)
    expect(page).to have_content(dons.location)
    expect(page).to have_content(turing.location)
  end
end
