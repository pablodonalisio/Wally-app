require 'rails_helper'

RSpec.describe Picture, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      picture = Picture.create({ url: 'assets/images/test.jpg' })
      expect(picture).to be_valid
    end

    it { should validate_presence_of(:url) }
  end
end
