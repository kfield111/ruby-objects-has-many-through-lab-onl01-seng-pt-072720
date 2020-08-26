class Genre
  attr_accessor :name, :artist, :song

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
  Song.all.select do |temp|
    temp.genre == self
    end
  end

  def artists
    songs.map do |temp|
      temp.artist
    end
  end




end
