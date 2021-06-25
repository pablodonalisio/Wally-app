require 'rails_helper'

RSpec.describe Picture, type: :model do
  let(:picture) { Picture.new({ name: 'assets/images/test.jpg' }) }
  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(picture).to be_valid
    end

    it { should validate_presence_of(:name) }
  end

  describe 'Attachment' do
    it 'is valid  ' do
      subject.image.attach(
        io: File.open(Rails.root.join('app', 'assets', 'images', 'pictures', 'wally1.jpg')),
        filename: 'attachment.jpg', content_type: 'image/jpg'
      )
      expect(subject.image).to be_attached
    end
  end

  describe 'associations' do
    it { should have_many(:coordinate_pairs) }
    it { should have_many(:characters) }
  end
end
