require 'rails_helper'

RSpec.describe Owner, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should have_many :machines }

    it "has a valid factory" do
      expect(build(:owner)).to be_valid
    end
  end
end
