# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
  {firstname: "Mario", lastname: "Mario", age: 40, username: "Mario", password: "Mustachio"},
  {firstname: "Link", lastname: "Link", age: 117, username: "Link", password: "StasisAllDay"},
  {firstname: "John", lastname: "117", age: 47, username: "MasterChief", password: "Cortana"},
  {firstname: "Iroquois", lastname: "Pliskin", age: 49, username: "SolidSnake", password: "Hideo"},
  {firstname: "Lara", lastname: "Croft", age: 29, username: "LaraCroft", password: "Archaelogist"},
  {firstname: "David", lastname: "Bateson", age: 30, username: "Agent47", password: "NotAnAssassin"},
  {firstname: "Jean Luc", lastname: "Pikachu", age: 25, username: "Pikachu", password: "YellowLightning"},
  {firstname: "Olgilvie", lastname: "Hedgehog", age: 30, username: "Sonic", password: "LongLiveSega"},
  {firstname: "Gordon", lastname: "Freeman", age: 27, username: "G-Man", password: "HalfLife3?"}
]

user_list.each do |u|
  User.create(firstname: u[:firstname], lastname: u[:lastname], age: u[:age], username: u[:username], password: u[:password])
end

# games_list = [
#   "Legend of Zelda: Breath of the Wild",
#   "Super Mario 64",
#   "Metal Gear Solid V: The Phantom Pain",
#   "Final Fantasy VII",
#   "Half-Life 2",
#   "Portal",
#   "Minecraft",
#   "Fortnite",
#   "Starcraft 2",
#   "Grand Theft Auto V",
#   "The Last of Us",
#   "Pac-Man",
#   "Resident Evil 3",
#   "Tetris",
#   "Red Dead Redemption 2",
#   "Death Stranding",
#   "Animal Crossing: New Horizons",
#   "Super Smash Brothers Ultimate",
#   "Halo: Combat Evolved",
#   "GoldenEye 007",
#   "DOOM Eternal",
#   "Pong",
#   "Mortal Kombat",
#   "Katamari Damacy",
#   "Starfox 64",
#   "Civilization IV",
#   "Guitar Hero",
#   "Fallout",
#   "Batman: Arkham City",
#   "Call of Duty: Modern Warfare"
# ]

# games_list.each do |name|
#   Game.create(name: name)
# end

# consoles_list = {
#   "Switch" => "Nintendo",
#   "Wii" => "Nintendo",
#   "N64" => "Nintendo",
#   "Gamecube" => "Nintendo",
#   "Xbox One" => "Microsoft",
#   "Xbox 360" => "Microsoft",
#   "Xbox" => "Microsoft",
#   "Playstation 4" => "Sony",
#   "Playstation 3" => "Sony",
#   "Playstation 2" => "Sony",
#   "Playstation" => "Sony",
#   "Dreamcast" => "Sega",
#   "PC" => "OEM Manufacturers"
# }

# consoles_list.each do |name, manuf|
#   Console.create(name: name, manufacturer: manuf)
# end

# User.all.each do |user|
#   game_ids = (1..30).to_a.shuffle.pop(10)
#   game_ids.each do |id|
#     user.games << Game.find(id)
#   end
#   console_ids = (1..13).to_a.shuffle.pop(5)
#   console_ids.each do |id|
#     user.consoles << Console.find(id)
#   end
# end
