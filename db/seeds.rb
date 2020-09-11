number_of_person = 30
puts "Seeding Person"
puts "=============="
puts
(1..number_of_person).each do |i|
  p = Person.new
  p.first_name = Faker::Name.unique.first_name
  p.last_name = Faker::Name.unique.last_name
  p.birth_date = rand(10.years).seconds.ago
  g = rand(0..1)
  p.gender = if g == 0
    'female'
  else
    'male'
  end
  p.height = rand(80..200)
  p.weight = rand(20..200)
  p.description = Faker::Books::Dune.saying
  p.save
  putc '.'
end
puts
puts
puts "Done!"