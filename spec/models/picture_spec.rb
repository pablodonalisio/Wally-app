require 'rails_helper'

RSpec.describe Picture, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      picture = Picture.create({ url: 'assets/images/test.jpg' })
      expect(picture).to be_valid
    end

    it { should validate_presence_of(:url) }
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
end
