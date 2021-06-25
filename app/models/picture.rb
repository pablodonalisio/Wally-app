class Picture < ApplicationRecord
  validates_presence_of :url
  has_one_attached :image
end
