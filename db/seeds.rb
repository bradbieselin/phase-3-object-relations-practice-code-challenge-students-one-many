puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-January",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-February",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-March",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-April",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-May",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
s1 = Student.create(name: "Rob", age: 28, cohort_id: c1.id)
s2 = Student.create(name: "Mike", age: 24, cohort_id: c2.id)
s3 = Student.create(name: "John", age: 26, cohort_id: c3.id)
s4 = Student.create(name: "Sarah", age: 25, cohort_id: c4.id)
s5 = Student.create(name: "Joe", age: 29, cohort_id: c4.id)
s6 = Student.create(name: "Brad", age: 26, cohort_id: c5.id)

puts "Done!"