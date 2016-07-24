# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'factory_girl_rails'

FactoryGirl.create_list :user, 10
20.times do
  FactoryGirl.create_list :ride, 1, user: User.all[rand(0...10)]
end

20.times do
  FactoryGirl.create_list :booking, 1, user: User.all[rand(0...10)], ride: Ride.all[rand(0...20)]
end

20.times do
  FactoryGirl.create_list :review, 1, user: User.all[rand(0...10)]
end
