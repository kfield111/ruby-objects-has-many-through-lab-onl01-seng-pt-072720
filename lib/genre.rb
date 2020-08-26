class Genre
  attr_reader :name
  attr_accessor :artist, :song

  @@all = []

  def initialize (name, song, artist)
    @name = name
    @artist = artist
    @song = song
    @@all << self
  end

  def self.all
    @@all
  end




end
