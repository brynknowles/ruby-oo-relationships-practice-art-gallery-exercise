require_relative '../config/environment.rb'

ari = Artist.new("Ari", 2)
ziggy = Artist.new("Ziggy", 6)

met = Gallery.new("The Met", "NYC")
moma = Gallery.new("MOMA", "NYC")
louvre = Gallery.new("The Louvre Museum", "Paris")

painting1 = Painting.new("A House", 400, ari, met)
painting2 = Painting.new("My Bed", 1000, ziggy, louvre)
painting3 = Painting.new("A Cactus", 1200, ari, moma)
painting4 = Painting.new("A Nap", 500, ziggy, louvre)
painting5 = Painting.new("A Volcano", 10000, ari, louvre)



binding.pry

puts "Bob Ross rules."
