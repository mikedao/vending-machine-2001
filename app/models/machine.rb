class Machine < ApplicationRecord
  validates_presence_of :location
  
  belongs_to :owner
end
