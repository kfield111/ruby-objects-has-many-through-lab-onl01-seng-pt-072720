class Genre
  attr_reader :name
  attr_accessor :artist, :song

  @@all = []

  def initialize
    @name = name
    @artist = artist
    @song = song
    @@all << self
  end




end
