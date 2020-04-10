class Machine < ApplicationRecord
  validates_presence_of :location

  belongs_to :owner
  has_many :machine_snacks
  has_many :snacks, through: :machine_snacks

  def average_price
    snacks.average(:price).to_f
  end

  def count_of_snacks
    snacks.count(:name)
  end

  def add(snack)
    snacks << snack
  end
end
