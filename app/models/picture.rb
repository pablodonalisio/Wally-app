class Picture < ApplicationRecord
  validates_presence_of :name
  has_one_attached :image
  has_many :coordinate_pairs
  has_many :characters, through: :coordinate_pairs
end
