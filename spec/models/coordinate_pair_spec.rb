require 'rails_helper'

RSpec.describe CoordinatePair, type: :model do
  describe 'validations' do
    let(:character) { Character.create({ name: 'Wally' }) }
    let(:picture) { Picture.create({ url: 'some/url.jpg' }) }
    it 'is valid with valid attributes' do
      coordinate_pair = CoordinatePair.new(
        {
          x: '50',
          y: '50',
          character_id: character.id,
          picture_id: picture.id
        }
      )
      expect(coordinate_pair).to be_valid
    end

    it { should validate_presence_of(:x) }
    it { should validate_presence_of(:x) }
    it { should validate_presence_of(:picture_id) }
    it { should validate_presence_of(:character_id) }
  end

  describe 'associations' do
    it { should belong_to(:picture) }
    it { should belong_to(:character) }
  end
end
