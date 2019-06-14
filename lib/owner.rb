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
    "I am a #{species}."
  end

  def pets
    @@pets
  end

  def buy_fish(fish)
    fish = Fish.new(name)
    @@pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(name)
    @@pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(name)
    @@pets[:dogs] << dog
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
    pets.each do |type, pets|
      pets.map do |pet| pet.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end
