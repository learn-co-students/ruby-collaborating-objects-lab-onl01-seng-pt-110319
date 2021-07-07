
class Song
  attr_accessor :name, :artist
  @@all = []
  @songs = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist= (artist)
    @artist = artist
    artist.songs << self
  end
  
  def songs
    @songs << self
  end
  
  def self.new_by_filename(filename)
    @name = filename.split("-")
    song = self.new(@name[1].strip)
    song.artist= (Artist.find_or_create_by_name(@name[0].strip))
    song
  end
  
  def artist_name=(name)
    self.artist= (Artist.find_or_create_by_name(name))
  end
  
  def self.all
    @@all
  end
  
end