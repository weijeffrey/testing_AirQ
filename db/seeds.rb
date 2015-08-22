# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
BusinessUser.create([
  {name: 'Admin',
    phone_number: 12345678,
    email: 'admin@hsbc.com',
    password: '**SECRET**'},
  {name: 'Admin2',
    phone_number: 98765432,
    email: 'admin2@hsbc.com',
    password: '**SECRET2**'},
  {name: 'Admin3',
    phone_number: 10101010,
    email: 'admin3@hsbc.com',
    password: '**SECRET3**'}
  ])

Company.create(
  name: 'HSBC',
  industry: 'Banking'
  )

IndividualUser.create(
  first_name: 'Harry',
  last_name: 'GG',
  email: 'harry.gg@gmail.com',
  phone_number: 27134567,
  password: 'harry_is_a_ninja'
  )

Desk.create(
  service_type: 'Wealth Management (Platinum Member)'
  )