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
  Song.all.select do |temp|
    temp.artist == self
    end
  end

  def new_song (song, genre)
    Song.new(name, self, genre)
  end

  def genres
    new_song.map do |temp|
      temp.genre
    end
  end


end
