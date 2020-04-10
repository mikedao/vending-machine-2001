require 'rails_helper'

RSpec.describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should belong_to :owner }

    it "has a valid factory" do
      expect(build(:machine)).to be_valid
    end
  end  
end
