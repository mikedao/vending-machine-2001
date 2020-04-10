require 'rails_helper'

describe Snack do
  describe "validations" do
    [:name, :price].each do |field|
      it { should validate_presence_of field }
    end
  end

  describe "relationships" do
    it { should have_many :machines }
    it { should have_many :machine_snacks }
  end
end
