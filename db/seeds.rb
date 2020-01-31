Animal.destroy_all

25.times do |index|
  Animal.create! {
          name: Faker::Creature::Cat.name,
          image: "",
          species: "Cat",
          bio: "",
          gender: "Faker::Creature::Dog.gender",
          breed: "Faker::Creature::Cat.breed",
}
end
puts '25 Cats Created'

25.times do |index|
  Animal.create! {
          name: Faker::Creature::Dog.name,
          image: "",
          species: "Dog",
          bio: "",
          gender: Faker::Creature::Dog.gender,
          breed: Faker::Creature::Dog.breed,
}
end
puts '25 Dogs Created'
