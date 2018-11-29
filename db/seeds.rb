# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "creating 5 users"

User.create({ email: 'ryan@wagon.com', password:'123456',
  first_name: 'Ryan',
  last_name: 'Propst',
  username: 'RyanPropst1',
  phone_number: '12345678',
  avatar_url: 'https://avatars0.githubusercontent.com/u/40554996?s=400&v=4',
})
User.create({ email: 'goga@wagon.com', password:'123456',
  first_name: 'Goga',
  last_name: '2004',
  username: 'Goga2004',
  phone_number: '',
  avatar_url: 'https://avatars2.githubusercontent.com/u/37845674?s=400&v=4',
})
User.create({ email: 'douglas@wagon.com', password:'123456',
  first_name: 'Douglas',
  last_name: 'Bay',
  username: 'douglasbays',
  phone_number: '2345678909876',
  avatar_url: 'https://avatars2.githubusercontent.com/u/43327471?s=400&v=4',
})
User.create({ email: 'mathias@wagon.com', password:'123456',
  first_name: 'Mathias',
  last_name: 'Sellam',
  username: 'TheMightyMathias',
  phone_number: '3456789098765',
  avatar_url: 'https://avatars1.githubusercontent.com/u/38690859?s=400&u=6cc9be8223d682144475e6fa07242da4f1c4a788&v=4',
})
User.create({ email: 'zozo@wagon.com', password:'123456',
  first_name: 'Zozo',
  last_name: 'zozozo',
  username: 'ZZZZZzzz',
  phone_number: '+3356789',
  avatar_url: '',
})

p "creating 5 cars"

Car.create( {
  title: 'Beautiful Wolksagen',
  model: 'Polo',
  brand: 'Wolksagen',
  year: 2000,
  color: 'black',
  location: 'Friedrichstraße 103, 10117 Berlin, Germany',
  price: 50 ,
  user_id: 1
})

Car.create({
  title: 'Beautiful Renault in Lyon',
  model: 'Megan',
  brand: 'Renault',
  year: 2018,
  color: 'Light Grey',
  location: '16 Villa Gaudelet, Paris',
  price: 40,
  user_id: 1
})

Car.create({
  title: 'Terrible fiat',
  model: '500',
  brand: 'fia',
  year: 2014,
  color: 'Red',
  location: 'Piazza Sant Elisabetta, 3, 50122 Firenze FI, Italy',
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
  location: 'Carrer de Méndez Núñez
Barcelona Catalonia 08003
Spain',
  price: 100,
  user_id: 3
})

Car.create({
  title: 'Amazing Mustag',
  model: 'Mustang',
  brand: 'Ford',
  year: 1978,
  color: 'Red with white stripes',
  location: '07 E. 12th Street
New York NY 10009',
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
Booking.create ({
  start_date: Date.new(2019,01,01),
  end_date: Date.new(2019,01,14),
  user_id: 1,
  car_id: 4,
}
)

