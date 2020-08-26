class Patient
  attr_accessor :name, :appointments, :doctors

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end




end
