# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.delete_all

100.times do
  Car.create(make: Faker::Vehicle.manufacture,
   year: Faker::Number.between(2000,2016),
   price: Faker::Number.between(10000,20000)
   )

end

100.times do
  Book.create(title: Faker::Book.title,
    year: Faker::Number.between(1990,2016),
    length: Faker::Number.between(250,1000)
    )
end

# books = Book.all
# books.each do |book|
#   if book.year > 1950
#     book.title = "Harry Potter"
#     book.save
#   elsif book.year < 1950
#     book.destroy
#   end
# end

