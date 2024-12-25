# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#


10.times do
  Movie.create!(
    name: Faker::Movie.title,
    synopsis: Faker::Movie.quote,
    director: Faker::Name.name
  )
end

puts "10 películas creadas"


10.times do
  Serie.create!(
    name: Faker::Movie.title,
    synopsis: Faker::Movie.quote, 
    director: Faker::Name.name
  )
end

puts "10 series creadas"


10.times do
  DocumentaryFilm.create!(
    name: Faker::Movie.title,
    synopsis: Faker::Movie.quote,
    director: Faker::Name.name
  )
end

puts "10 documentales creados"




