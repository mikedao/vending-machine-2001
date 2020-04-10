require 'rails_helper'

RSpec.describe 'Snack show page', type: :feature do
  it 'can see individual price, locations that carry snack, average price of snacks,
  count of different items' do

    owner1 = create(:owner)
    dons  = create(:machine, owner: owner1)
    new_machine = create(:machine, owner: owner1)

    snack1 = create(:snack, price: 10.45)
    snack2 = create(:snack, price: 4.53)
    snack3 = create(:snack, price: 3.42)
    snack4 = create(:snack, price: 6.33)
    snack5 = create(:snack, price: 3.22)

    dons.snacks << [snack1, snack2, snack3, snack4]
    new_machine.snacks << [snack1, snack2, snack3, snack4, snack5]

    visit "/snacks/#{snack1.id}"
    expect(page).to have_content(snack1.name)
    expect(page).to have_content(snack1.price)
    expect(page).to have_content(dons.location)
    expect(page).to have_content(new_machine.location)

    within "#machine_info-#{dons.id}" do
      expect(page).to have_content(dons.average_snack_price)
      expect(page).to have_content(dons.snack_counter)
    end

    within "#machine_info-#{new_machine.id}" do
      expect(page).to have_content(new_machine.average_snack_price)
      expect(page).to have_content(new_machine.snack_counter)
    end

    expect(page).to_not have_content(snack4.name)
    expect(page).to_not have_content(snack2.name)
    expect(page).to_not have_content(snack3.price)
    expect(page).to_not have_content(snack5.price)

    visit "/snacks/#{snack5.id}"
    expect(page).to have_content(snack5.name)
    expect(page).to have_content(snack5.price)
    expect(page).to have_content(new_machine.location)

    within "#machine_info-#{new_machine.id}" do
      expect(page).to have_content(new_machine.average_snack_price)
      expect(page).to have_content(new_machine.snack_counter)
    end

    expect(page).to_not have_content(dons.location)

    expect(page).to_not have_content(snack1.name)
    expect(page).to_not have_content(snack2.name)
    expect(page).to_not have_content(snack4.price)
  end
end
