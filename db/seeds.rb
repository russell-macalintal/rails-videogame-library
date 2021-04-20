# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
  {firstname: "Mario", lastname: "Mario", age: 40, username: "Mario", password: "Mustachio", password_confirmation: "Mustachio"},
  {firstname: "Link", lastname: "Link", age: 117, username: "Link", password: "StasisAllDay", password_confirmation: "StasisAllDay"},
  {firstname: "John", lastname: "117", age: 47, username: "MasterChief", password: "Cortana", password_confirmation: "Cortana"},
  {firstname: "Iroquois", lastname: "Pliskin", age: 49, username: "SolidSnake", password: "HideoKojima", password_confirmation: "HideoKojima"},
  {firstname: "Lara", lastname: "Croft", age: 29, username: "LaraCroft", password: "Archaelogist", password_confirmation: "Archaelogist"},
  {firstname: "David", lastname: "Bateson", age: 30, username: "Agent47", password: "NotAnAssassin", password_confirmation: "NotAnAssassin"},
  {firstname: "Jean Luc", lastname: "Pikachu", age: 25, username: "Pikachu", password: "YellowLightning", password_confirmation: "YellowLightning"},
  {firstname: "Olgilvie", lastname: "Hedgehog", age: 30, username: "Sonic", password: "LongLiveSega", password_confirmation: "LongLiveSega"},
  {firstname: "Gordon", lastname: "Freeman", age: 27, username: "G-Man", password: "HalfLife3?", password_confirmation: "HalfLife3?"},
  {firstname: "Admin", lastname: "Istrator", age: 1000, username: "admin", password: "admin123", password_confirmation: "admin123"}
]

user_list.each do |u|
  User.create(firstname: u[:firstname], lastname: u[:lastname], age: u[:age], username: u[:username], password: u[:password], password_confirmation: u[:password_confirmation], :hours_played => 0)
end

games_list = {
  "Legend of Zelda: Breath of the Wild" => "Nintendo",
  "Super Mario 64" => "Nintendo",
  "Metal Gear Solid V: The Phantom Pain" => "Konami",
  "Final Fantasy VII" => "Square Enix",
  "Half-Life 2" => "Valve",
  "Portal" => "Valve",
  "Fortnite" => "Epic Games",
  "Population One" => "BigBox",
  "Starcraft 2" => "Blizzard",
  "Grand Theft Auto V" => "Rockstar",
  "The Last of Us" => "Naughty Dog",
  "Pac-Man" => "Namco",
  "Resident Evil 3" => "Capcom",
  "Tetris" => "Alexey Pajitnov",
  "Red Dead Redemption 2" => "Rockstar",
  "Death Stranding" => "Kojima",
  "Animal Crossing: New Horizons" => "Nintendo",
  "Super Smash Brothers Ultimate" => "Bandai Namco",
  "Halo: Combat Evolved" => "Bungie",
  "GoldenEye 007" => "Rare",
  "DOOM Eternal" => "id",
  "Pong" => "Atari",
  "Mortal Kombat" => "Midway",
  "Katamari Damacy" => "Namco",
  "Starfox 64" => "Nintendo",
  "Civilization IV" => "Firaxis",
  "Guitar Hero" => "Harmonix",
  "Fallout" => "Bethesda",
  "Batman: Arkham City" => "Rocksteady",
  "Call of Duty: Modern Warfare" => "Infinity Ward",
  "The Climb" => "Crytek",
  "Burnout Paradise" => "Criterion",
  "Gran Turismo 6" => "Polyphony Digital",
  "Among Us" => "InnerSloth",
  "Madden NFL 21" => "Electronic Arts",
  "Overwatch" => "Blizzard",
  "Control" => "Remedy",
  "Team Fortress 2" => "Valve",
  "No Man's Sky" => "Hello Games",
  "Cyberpunk 2077" => "CD Projekt"
}

games_list.each do |name, developer|
  Game.create(name: name, developer: developer, hours_played: 0)
end

consoles_list = {
  "Switch" => "Nintendo",
  "Wii" => "Nintendo",
  "N64" => "Nintendo",
  "Gamecube" => "Nintendo",
  "Xbox Series (X/S)" => "Microsoft",
  "Xbox One (X/S)" => "Microsoft",
  "Xbox 360" => "Microsoft",
  "Xbox" => "Microsoft",
  "Playstation 5" => "Sony",
  "Playstation 4" => "Sony",
  "Playstation 3" => "Sony",
  "Playstation 2" => "Sony",
  "Playstation" => "Sony",
  "Dreamcast" => "Sega",
  "PC" => "OEM Manufacturers",
  "VR Headset" => "OEM Manufacturers"
}

consoles_list.each do |name, manuf|
  Console.create(name: name, manufacturer: manuf)
end

User.all.each do |user|
  game_ids = (1..40).to_a.shuffle.pop(12)
  game_ids.each do |id|
    user.games << Game.find(id)
  end
  console_ids = (1..16).to_a.shuffle.pop(5)
  console_ids.each do |id|
    user.consoles << Console.find(id)
  end
end
