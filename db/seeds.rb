# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User Seeds
rc = User.create!(name: 'Raksihit Choudhary', email: 'rc@gmail.com', password: '123456789', password_confirmation: '123456789', admin: 1)
am = User.create!(name: 'Aditya Murthy', email: 'am@gmail.com', password: '123456789', password_confirmation: '123456789')
fs = User.create!(name: 'Faisal Subaei', email: 'fs@gmail.com', password: '123456789', password_confirmation: '123456789')
sa = User.create!(name: 'Suhaib Rousan', email: 'sa@gmail.com', password: '123456789', password_confirmation: '123456789')

# Mouse Seeds
m1 = Mouse.create!(tag_number: 12, genome: 'Type1', parent_information: 111, sex: 'Female', date_of_birth: DateTime.new(2014, 9, 22))
m2 = Mouse.create!(tag_number: 15, genome: 'Type1', parent_information: 121, sex: 'Male', date_of_birth: DateTime.new(2014, 9, 15))
m3 = Mouse.create!(tag_number: 17, genome: 'Type2', parent_information: 121, sex: 'Female', date_of_birth: DateTime.new(2014, 9, 1))
m4 = Mouse.create!(tag_number: 19, genome: 'Type2', parent_information: 111, sex: 'Male',  date_of_birth: DateTime.new(2014, 9, 5))
m5 = Mouse.create!(tag_number: 21, genome: 'Type3', parent_information: 211, sex: 'Female',  date_of_birth: DateTime.new(2014, 9, 22))
m6 = Mouse.create!(tag_number: 22, genome: 'Type3', parent_information: 221, sex: 'Male',  date_of_birth: DateTime.new(2014, 9, 15))
m7 = Mouse.create!(tag_number: 23, genome: 'Type4', parent_information: 221, sex: 'Female',  date_of_birth: DateTime.new(2014, 9, 1))
m8 = Mouse.create!(tag_number: 24, genome: 'Type4', parent_information: 211, sex: 'Male',  date_of_birth: DateTime.new(2014, 9, 5))

m9 = Mouse.create!(tag_number: 31, genome: 'Type5', parent_information: 111, sex: 'Female',  date_of_birth: DateTime.new(2013, 12, 22))
m10 = Mouse.create!(tag_number: 32, genome: 'Type5', parent_information: 121, sex: 'Male',  date_of_birth: DateTime.new(2013, 12, 15))
m11 = Mouse.create!(tag_number: 33, genome: 'Type6', parent_information: 121, sex: 'Female',  date_of_birth: DateTime.new(2013, 12, 1))
m12 = Mouse.create!(tag_number: 34, genome: 'Type6', parent_information: 111, sex: 'Male', date_of_birth: DateTime.new(2013, 12, 5))
m13 = Mouse.create!(tag_number: 35, genome: 'Type7', parent_information: 211, sex: 'Female',  date_of_birth: DateTime.new(2013, 12, 22))
m14 = Mouse.create!(tag_number: 36, genome: 'Type7', parent_information: 221, sex: 'Male',  date_of_birth: DateTime.new(2013, 12, 15))
m15 = Mouse.create!(tag_number: 37, genome: 'Type8', parent_information: 221, sex: 'Female',  date_of_birth: DateTime.new(2013, 12, 1))
m16 = Mouse.create!(tag_number: 38, genome: 'Type8', parent_information: 211, sex: 'Male',  date_of_birth: DateTime.new(2013, 12, 5))

# Cage Seeds
cage1 = Cage.create!(cage_name: 'Cage1')
cage2 = Cage.create!(cage_name: 'Cage2')
cage3 = Cage.create!(cage_name: 'Cage3')
cage4 = Cage.create!(cage_name: 'Cage4')
cage5 = Cage.create!(cage_name: 'Cage5')
cage6 = Cage.create!(cage_name: 'Cage6')
cage7 = Cage.create!(cage_name: 'Cage7')
cage8 = Cage.create!(cage_name: 'Cage8')

# Transfer Seeds
t1 = Transfer.create!()
t2 = Transfer.create!()
#t3 = Transfer.create!()
#t4 = Transfer.create!()

# Association seeds for User
sa.cages << cage1 << cage2
sa.mice << m1 << m2 << m3 << m4

am.cages << cage3 << cage4
am.mice << m5 << m6 << m7 << m8

fs.cages << cage5 << cage6
fs.mice << m9 << m10 << m11 << m12

rc.cages << cage7 << cage8
rc.mice << m13 << m14 << m15 << m16

# Association seeds for Cage
cage1.mice << m1 << m2

cage2.mice << m3 << m4

cage3.mice << m5 << m6
cage3.transfer = t1

cage4.mice << m7 << m8
cage4.transfer = t2

cage5.mice << m9 << m10

cage6.mice << m11 << m12

cage7.mice << m13 << m14

cage8.mice << m15 << m16

# Association seeds for Mouse
m1.transfer = t1

m3.transfer = t2