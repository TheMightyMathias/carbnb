# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "creating 5 users"

User.create({ email: 'ryan@wagon.com', password:'123456'})
User.create({ email: 'goga@wagon.com', password:'123456'})
User.create({ email: 'douglas@wagon.com', password:'123456'})
User.create({ email: 'mathias@wagon.com', password:'123456'})
User.create({ email: 'zozo@wagon.com', password:'123456'})

p "creating 5 cars"

Car.create( {
  title: 'Beautiful Wolksagen',
  model: 'Polo',
  brand: 'Wolksagen',
  year: 2000,
  color: 'black',
  location: 'Berlin',
  price: 50 ,
  user_id: 1
})

Car.create({
  title: 'Beautiful Renault in Lyon',
  model: 'Megan',
  brand: 'Renault',
  year: 2018,
  color: 'Light Grey',
  location: 'Lyon',
  price: 40,
  user_id: 1
})

Car.create({
  title: 'Terrible fiat',
  model: '500',
  brand: 'fia',
  year: 2014,
  color: 'Red',
  location: 'Firenze',
  price: 40,
  user_id: 2
}
)
Car.create({
  title: 'Nice Ferrari',
  model: 'Enzo',
  brand: 'Ferrari',
  year: 2012,
  color: 'Red',
  location: 'Barcelona',
  price: 100,
  user_id: 3
})

Car.create({
  title: 'Amazing Mustag',
  model: 'Mustang',
  brand: 'Ford',
  year: 1978,
  color: 'Red with white stripes',
  location: 'New York aka the big apple',
  price: 70,
  user_id: 3
})

p "creating 5 bookings"

Booking.create ({
  start_date: Date.new(2018,11,01),
  end_date: Date.new(2018,11,10),
  user_id: 1,
  car_id: 5,
})
Booking.create ({
  start_date: Date.new(2018,11,01),
  end_date: Date.new(2018,11,10),
  user_id: 2,
  car_id: 4,
})
Booking.create ({
  start_date: Date.new(2019,11,01),
  end_date: Date.new(2019,11,05),
  user_id: 4,
  car_id: 1,
})
Booking.create ({
  start_date: Date.new(2018,12,01),
  end_date: Date.new(2018,12,22),
  user_id: 5,
  car_id: 3,
})
Booking.create ({
  start_date: Date.new(2019,01,01),
  end_date: Date.new(2019,01,14),
  user_id: 5,
  car_id: 2  ,
}
)
