class Owner
  attr_accessor :name, :type
  @@pets = {fishes:[], cats:[], dogs:[]}
  @@all = []

  def species(type)
    type = self.species
    type.dup.freeze
  end


end
