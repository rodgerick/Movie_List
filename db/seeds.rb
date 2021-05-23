# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
Genre.destroy_all
Movie.destroy_all

@id_num = 0

5.times do
  @id_num += 1
  t = Genre.create(name: Faker::Book.genre)

  5.times do 
    Movie.create(name: Faker::Book.title , rating: rand(1..10), review: Faker::Movies::HarryPotter.quote, genre_id: t.id)
  end
end

puts "Genres created, Movie titles created!"

