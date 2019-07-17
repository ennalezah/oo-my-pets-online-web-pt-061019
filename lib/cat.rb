class Cat
  attr_reader :name, :owner
  attr_accessor :mood
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    self.class.all << self
    owner.cats << self
  end
  
  def self.all 
    @@all
  end
end