 class Song 
  attr_accessor :name, :artist 
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(name)
    artist, song = name.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist 
    #couldn't do new_song.artist.name b/c the artist in line 16 is a string, not an object...PAY ATTENTION TO TYPES!!!
    new_song
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    
  end 
end 