# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Division.destroy_all
15.times do |index|
  Division.create!(division_name: Faker::Job.unique.field)
end
p "Created #{Division.count} divisions"

Employee.destroy_all
15.times do |index|
  first_name = Faker::Creature::Cat.unique.name
  last_name = Faker::Hipster.unique.word
  full_name = (first_name.titleize + " " + last_name.titleize)
  Employee.create!(employee_name: full_name)
end
p "Created #{Employee.count} employees"


Project.destroy_all
15.times do |index|
  Project.create!(project_name: Faker::Cannabis.unique.strain)
end
p "Created #{Project.count} projects"
