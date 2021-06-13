require 'rails_helper'

RSpec.describe Picture, type: :model do
  it "must have a url" do
    picture = Picture.create({url: ""})
    expect(picture.errors).not_to be_empty 
  end

  it "creates a picture record" do
    picture = Picture.create({url: "assets/images/test.jpg"})
    expect(picture.url).to eq("assets/images/test.jpg")
  end
end
