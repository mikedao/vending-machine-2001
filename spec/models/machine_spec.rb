require 'rails_helper'

RSpec.describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should belong_to :owner }

    it "has a valid factory" do
      expect(build(:machine)).to be_valid
    end
  end

  describe 'methods' do
    it "can calculate average price of all snacks" do

      owner1 = create(:owner)
      dons  = create(:machine, owner: owner1)

      snack1 = create(:snack, price: 10.45)
      snack2 = create(:snack, price: 4.53)
      snack3 = create(:snack, price: 3.42)
      snack4 = create(:snack, price: 6.33)

      dons.snacks << [snack1, snack2, snack3, snack4]
      expect(dons.average_snack_price.to_i).to eq(5)
    end
  end
end
