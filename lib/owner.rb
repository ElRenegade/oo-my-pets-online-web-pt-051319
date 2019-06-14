class Owner
  attr_reader :species
  attr_accessor :name, :pets, :fish, :dog, :cat
  @@pets = {fishes:[], dogs:[], cats:[]}
  @@all = []

  def initialize(species)
    @species = species
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am #{species}"
  end

  def pets
    @@pets
  end

  def buy_fish(fish)
    @@pets[:fishes] << Fish.new(fish)
  end

  def buy_cat
    @@pets[:cats] << Cat.new(cat)
  end

  def buy_dog
    @@pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @@pets[:dogs].each{|dog|
    dog.mood = "happy"}
  end

  def play_with_cats
    @@pets[:cats].each{|cat|
    cat.mood = "happy"}
  end

  def feed_fish
    @@pets[:fishes].each{|fish|
    fish.mood = "happy"}
  end

  def sell_pets
    pets.each { |pet, every|
      every.map{|pet|
        pet.mood = "nervous"
      }
    }
  end

  def list_pets
    "I have #{pets[fishes].length} fish, 3 #{pets[dogs].length}, and #{pets[cats].length} cat(s)."
  end
end
