require 'rails_helper'

RSpec.describe 'Machine show page', type: :feature do
  it 'can see name and price of all snacks in machine' do

    owner1 = create(:owner)
    dons  = create(:machine, owner: owner1)

    snack1 = create(:snack)
    snack2 = create(:snack)
    snack3 = create(:snack)
    snack4 = create(:snack)

    dons.snacks << [snack1, snack2, snack3, snack4]

    visit machine_path(dons)

    expect(page).to have_content(dons.location)

    expect(page).to have_content(snack1.name)
    expect(page).to have_content(snack1.price)

    expect(page).to have_content(snack2.name)
    expect(page).to have_content(snack2.price)

    expect(page).to have_content(snack3.name)
    expect(page).to have_content(snack3.price)

    expect(page).to have_content(snack4.name)
    expect(page).to have_content(snack4.price)
  end
end
