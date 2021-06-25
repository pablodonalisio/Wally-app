class CoordinatePair < ApplicationRecord
  belongs_to :picture
  belongs_to :character
  validates_presence_of :x, :y, :picture_id, :character_id
end
