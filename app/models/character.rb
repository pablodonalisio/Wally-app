class Character < ApplicationRecord
  validates_presence_of :name
  has_many :coordinate_pairs
  has_many :pictures, through: :coordinate_pairs
end
