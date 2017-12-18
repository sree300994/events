100.times do
	registration = Registration.new("name" => Faker::Name.name, "no_of_tickets" => Random.rand(1..10))
end