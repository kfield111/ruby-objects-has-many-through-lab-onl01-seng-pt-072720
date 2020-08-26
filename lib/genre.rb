class Genre
  attr_reader :name
  attr_accessor :artist, :song

  @@all = []

  def initialize (name)
    @name = name
    @artist = artist
    @song = song
    @@all << self
  end

  def self.all
    @@all
  end


  def songs
  Songs.all.select do |temp|
    temp.genre == self
  end
  end




end
