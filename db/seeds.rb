# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Clear existing data
puts "seeding"
Car.delete_all
User.delete_all

# Create cars
cars_data = [
  {
    name: "Toyota Hilux",
    car_type: "Pickup",
    brand: "Toyota",
    fee_per_day: 100,
    color: "#998673",
    image: "https://images.unsplash.com/photo-1559416523-140ddc3d238c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dG95b3RhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Honda Acura",
    car_type: "Sports",
    brand: "Honda",
    fee_per_day: 100,
    color: "#520C07",
    image: "https://images.unsplash.com/photo-1600259828526-77f8617ceec9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGhvbmRhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "BMW M4",
    car_type: "Sedan",
    brand: "BMW",
    fee_per_day: 100,
    color: "#CD3820",
    image: "https://images.unsplash.com/photo-1617531653332-bd46c24f2068?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJtd3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Mercedes AMG",
    car_type: "Sports",
    brand: "Mercedes",
    fee_per_day: 100,
    color: "#282F35",
    image: "https://images.unsplash.com/photo-1617814065893-00757125efab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Audi RS4",
    car_type: "Sports",
    brand: "Audi",
    fee_per_day: 100,
    color: "#898F8F",
    image: "https://images.unsplash.com/photo-1606152421802-db97b9c7a11b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGF1ZGl8ZW58MHx8MHx8&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Nissan X-Trail",
    car_type: "SUV",
    brand: "Nissan",
    fee_per_day: 100,
    color: "#323C41",
    image: "https://images.unsplash.com/photo-1609521263047-f8f205293f24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bmlzc2FufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Mazda MX-5",
    car_type: "Sports",
    brand: "Mazda",
    fee_per_day: 100,
    color: "#BFC7C9",
    image: "https://images.unsplash.com/photo-1586464836139-86553c751f65?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fG1hemRhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Hyundai Elantra",
    car_type: "Sedan",
    brand: "Hyundai",
    fee_per_day: 100,
    color: "#2B3856",
    image: "https://images.unsplash.com/photo-1629421889558-e2315ffc869d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGh5dW5kYWl8ZW58MHx8MHx8&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Subaru Outback",
    car_type: "Hatchback",
    brand: "Subaru",
    fee_per_day: 100,
    color: "#6C6974",
    image: "https://images.unsplash.com/photo-1626443252351-4f3a387d6d43?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHN1YmFydXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Ford Expedition",
    car_type: "SUV",
    brand: "Ford",
    fee_per_day: 100,
    color: "#DFE2E2",
    image: "https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Kia EV6",
    car_type: "Sedan",
    brand: "Kia",
    fee_per_day: 100,
    color: "#262923",
    image: "https://images.unsplash.com/photo-1647588807130-91e0d173f25a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Toyota Corolla",
    car_type: "Sedan",
    brand: "Toyota",
    fee_per_day: 100,
    color: "#B4C4D4",
    image: "https://images.unsplash.com/photo-1623869675781-80aa31012a5a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Honda Civic",
    car_type: "Sedan",
    brand: "Honda",
    fee_per_day: 100,
    color: "#4D5261",
    image: "https://images.unsplash.com/photo-1606152421802-db97b9c7a11b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGF1ZGl8ZW58MHx8MHx8&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Toyota Supra",
    car_type: "Sports",
    brand: "Toyota",
    fee_per_day: 100,
    color: "#FAF9FD",
    image: "https://images.unsplash.com/photo-1638618164682-12b986ec2a75?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Honda Baby NSX",
    car_type: "Sports",
    brand: "Honda",
    fee_per_day: 100,
    color: "#243C55",
    image: "https://images.unsplash.com/photo-1600706432502-77a0e2e32790?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGhvbmRhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  {
    name: "Mercedes G550",
    car_type: "SUV",
    brand: "Mercedes",
    fee_per_day: 40.20,
    color: "#BDB5B3",
    image: "https://images.unsplash.com/photo-1520031441872-265e4ff70366?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1080&q=80",
    rented: false
  },
  # Add more car data here...
]

cars_data.each do |car_data|
  Car.create!(car_data)
end

# Create users
users_data = [
  {
    name: "Admin",
    email: "admin@mail.com",
    password: "password",
    password_confirmation: "password",
    role: "admin",
    photo: "https://avatars.githubusercontent.com/u/76783698?v=4",
    date_of_birth: "2000-10-11"
  },
  {
    name: "Maddox",
    email: "nickkiim7@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    photo: "url_david",
    date_of_birth: "2002-01-31"
  },
  # Add more user data here...
]

users_data.each do |user_data|
  User.create!(user_data)
end

puts "done seeding"