require_relative '../config/environment.rb'

sf = Gallery.new("gall_sf", "SF")
la = Gallery.new("gall_la", "LA")

alice = Artist.new("alice",5)
bob = Artist.new("Bob",6)
carol = Artist.new("Carol",7)

alice.create_painting("a_1", 15, sf)
alice.create_painting("a_2", 20, sf)
alice.create_painting("a_3", 15, la)
alice.create_painting("a_4", 17, la)

bob.create_painting("b_1", 12, sf)
bob.create_painting("b_2", 15, sf)
bob.create_painting("b_3", 17, la)
bob.create_painting("b_4", 20, la)

carol.create_painting("c_1", 12, sf)
carol.create_painting("c_2", 15, sf)
carol.create_painting("c_3", 17, la)
carol.create_painting("c_4", 20, la)
binding.pry

puts "Bob Ross rules."
