# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def cc(name, age, hair_color, eye_color, gender, phone, alive)
  Friend.create(name: name, age: age, hair_color: hair_color, eye_color: eye_color, gender: gender, phone: phone, alive: alive)
end

cc('FuChai', 23, 'black', 'brown', 'female', '505-333-3333', true)
cc('Michael', 22, 'brown', 'blue', 'male', '505-801-4444', true)
cc('Emily', 22, 'brown', 'brown', 'female', '505-555-555', true)
