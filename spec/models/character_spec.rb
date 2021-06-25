require 'rails_helper'

RSpec.describe Character, type: :model do
  let(:character) { Character.new(name: 'Wally') }
  describe 'validations' do
    it 'is valid with valid attribures' do
      expect(character).to be_valid
    end

    it { should validate_presence_of(:name) }
  end
  describe 'associations' do
    it { should have_many(:coordinate_pairs) }
    it { should have_many(:pictures) }
  end
end
