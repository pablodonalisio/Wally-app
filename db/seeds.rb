# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Picture.destroy_all

(1..4).each do |n|
  picture = Picture.new({ name: "Wally#{n}" })
  picture.image.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'pictures', "wally#{n}.jpg")),
    filename: "Wally#{n}.jpg",
    content_type: 'image/jpg'
  )
  picture.save
end
