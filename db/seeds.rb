# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    description: Faker::Lorem.sentence,
    password: "ABCDEF"
  )
end

5.times do
  event = Event.create!(
    title: Faker::Esport.event,
    description: Faker::Lorem.paragraph,
    start_date: Faker::Date.in_date_period,
    end_date: Faker::Date.in_date_period,
    duration: rand(1..99),
    price: rand(1..99),
    location: Faker::Address.city
  );
end

5.times do
  attendance =  Attendance.create(
    user_id: User.all.sample.id,
    event_id: Event.all.sample.id)
end
