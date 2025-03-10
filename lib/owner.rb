class Owner
  attr_accessor :pets, :name
 attr_reader :species

 @@all = []

 def initialize(species)
   @species = species
   @@all << self
   @pets = { :fishes => [], :dogs => [], :cats => [] }
 end

 def self.all
   @@all
 end

 def self.reset_all
   @@all.clear
 end

 def self.count
   @@all.size
 end

 def say_species
   "I am a #{species}."
 end

 def buy_fish(name)
   pets[:fishes] << Fish.new(name)
 end

 def buy_cat(name)
   pets[:cats] << Cat.new(name)
 end

 def buy_dog(name)
   pets[:dogs] << Dog.new(name)
 end

 def walk_dogs
   pets[:dogs].map {|dog| dog.mood = "happy"}

 end

 def play_with_cats
   pets[:cats].map {|cat| cat.mood = "happy"}
 end

 def feed_fish
   pets[:fishes].map {|fish| fish.mood = "happy"}
 end

 def sell_pets
   pets.each do |type, pets|
     pets.map {|pet| pet.mood = "nervous"}
   end
   pets.clear
 end

 def list_pets
   "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
 end
end
