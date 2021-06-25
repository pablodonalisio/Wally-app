class Picture < ApplicationRecord
  validates_presence_of :name
  has_one_attached :image
end
