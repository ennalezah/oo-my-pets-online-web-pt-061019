require 'pry'

class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs, :all_pets
  
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @species = "human"
    self.class.all << self
    @@count += 1
    
    @cats = []
    @dogs = []
    @all_pets = @cats.concat(@dogs)
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    self.all.clear
    @@count = 0
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    dog = Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    self.all_pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
    @cats.clear
    @dogs.clear
  end
  
  def list_pets
    
  end
end