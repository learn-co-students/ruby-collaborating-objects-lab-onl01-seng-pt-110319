class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
 #   @@all << self 
    @songs = []
    save
  end

  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song|song.artist == self}
  end
  
  def add_song(song)
   song.artist = self 
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find_by_name(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end



  def print_songs
    songs.each { |song| puts song.name }
  end

  def save
    @@all << self
  end
end 
