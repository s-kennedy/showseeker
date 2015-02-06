# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Show.create(band: 'Supertramp', venue: 'Super Stadium', city: 'Barcelona', date: Date.new(2015, 03, 20), price: 40, description: 'Supertramp performs their greatest hits')
Show.create(band: 'The Who', venue: 'Super Stadium', city: 'Toronto', date: Date.new(2014, 03, 05), price: 40, description: 'Amazing concert')
Show.create(band: 'Fleetwood Mac', venue: 'Super Stadium', city: 'Berlin', date: Date.new(2015, 05, 20), price: 30, description: 'Big reunion')
Show.create(band: 'Bob Dylan', venue: 'Super Stadium', city: 'Madrid', date: Date.new(2015, 06, 20), price: 20, description: 'Only the best')
Show.create(band: 'The Beatles', venue: 'Super Stadium', city: 'Amsterdam', date: Date.new(2015, 07, 20), price: 45, description: 'An intimate concert for true fans')
Show.create(band: 'David Bowie', venue: 'Super Stadium', city: 'Vancouver', date: Date.new(2015, 01, 20), price: 15, description: 'Huge outdoor show')
Show.create(band: 'The Rolling Stones', venue: 'Super Stadium', city: 'Paris', date: Date.new(2015, 03, 01), price: 50, description: 'There will be fireworks!')
Show.create(band: 'Lynard Skynard', venue: 'Super Stadium', city: 'Helsinki', date: Date.new(2015, 03, 10), price: 60, description: 'Debuting some new songs!')
Show.create(band: 'Queen', venue: 'Super Stadium', city: 'Stockholm', date: Date.new(2015, 03, 15), price: 35, description: 'First stop on the world tour')
Show.create(band: 'Justin Bieber', venue: 'Super Stadium', city: 'Minsk', date: Date.new(2015, 04, 12), price: 25, description: 'Farewell concert')
Show.create(band: 'Taylor Swift', venue: 'Super Stadium', city: 'Montreal', date: Date.new(2015, 01, 06), price: 41, description: 'Big show with lots of kittens')
Show.create(band: 'Katy Perry', venue: 'Super Stadium', city: 'Dakar', date: Date.new(2015, 02, 28), price: 5, description: 'Unplugged')