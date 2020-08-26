class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
  Songs.all.select do {|temp| temp.artist = self}
  end

  def new_song (name, artist, genre)
    song = Song.new(name, self, genre)
  end

  def genres

  end




end
