# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Adding multiple categories
Category.create([{name: 'Sport'}, {name: 'Festival' }, {name: 'EV100'}, {name: 'Film'}, {name: 'Kogupere'}, {name: 'Kinkekaardid'}, {name: 'Varia'}, {name: 'Näitus'}])

#Adding one event
Event.create([{
   name: "Lorem ipsum",
   short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
   long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
   price: 3000,
   date: Date.today + 2.months + 3.days,
   location: "Tartu",
   category: Category.where(name: "Sport").first
}, {
    name: "Lorem ipsum",
   short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
   long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
   price: 3000,
   date: Date.today - 1.year,
   location: "Tallinn",
   category: Category.where(name: "Film").first
}, {
    name: "Lorem ipsum",
   short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
   long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
   price: 3000,
   date: Date.new(2019, 8, 03),
   location: "Tartu",
   category: Category.where(name: "Näitus").first
}])

User.create({email:'sandra.onne@khk.ee', password: 'qwerty'}).confirm