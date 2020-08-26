class Genre
  attr_accessor :name, :artist, :song

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def songs
  Song.all.select {|temp| temp.genre == self}
  end

  def artists
    songs.map do |temp|
      temp.artist
    end
  end




end
