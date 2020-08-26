class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
  Song.all.select do |temp|
    temp.artist == self
    end
  end

  def new_song (name, genre)
    song = Song.new(name, self, genre)
  end

  def genres
    new_song.collect {|temp| temp.genre}
  end


end
