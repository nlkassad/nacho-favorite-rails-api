# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Dish.create([
              { name: 'Nachos' }
            ])
Restaurant.create([
                    { name: 'Taco Bell' },
                    { name: 'The Painted Burro',
                      address: 1,	city: 'Somerville' },
                    { name: 'Pour House',
                      address: 2,	city: 'Boston' },
                    { name: 'Sunset Grill & Tap',
                      address: 3,	city: 'Boston' },
                    { name: 'Tremont 647',
                      address: 4,
                      city: 'Boston' },
                    { name: 'John Harvard’s',
                      address: 5,	city: 'Cambridge' },
                    { name: 'Harry’s Bar and Grill',
                      address: 6,	city: 'Boston' }
                  ])
MenuItem.create([
                    { dish_id: 1, restaurant_id: 1 }
                ])
