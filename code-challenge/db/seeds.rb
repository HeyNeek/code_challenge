# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
frodo = Role.create(character_name: "Frodo Baggins", salary: 300000, actor_id: Actor.all.sample.id, movie_id: Movie.all.sample.id)
gandalf = Role.create(character_name: "Gandalf the Grey", salary: 1000000, actor_id: Actor.all.sample.id, movie_id: Movie.all.sample.id)
aragorn = Role.create(character_name: "Aragorn the Ranger", salary: 200000, actor_id: Actor.all.sample.id, movie_id: Movie.all.sample.id)
samwise = Role.create(character_name: "Samwise Gamgee", salary: 150000, actor_id: Actor.all.sample.id, movie_id: Movie.all.sample.id)
legolas = Role.create(character_name: "Legolas the Elf", salary: 500000, actor_id: Actor.all.sample.id, movie_id: Movie.all.sample.id)

# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here

puts "Seeding done!"