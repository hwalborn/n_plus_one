# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..100).each do |person|
  User.create(name: Faker::Name.name, age: Faker::Number.between(0, 99))
end

(1..50).each do |dog|
  dog = Dog.new(name: Faker::Name.name, age: Faker::Number.between(1, 15))
  dog.user = User.find(Random.rand(1..100))
  dog.save
end
