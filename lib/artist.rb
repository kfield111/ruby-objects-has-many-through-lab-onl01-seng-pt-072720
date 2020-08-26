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

  def new_song (name)
    song = Song.new(name, self)
  end

  def genres

  end




end
