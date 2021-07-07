require 'pry'
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
  
  def self.new_by_filename(filename)
    song_and_art = filename.split(" - ")
    song = self.new(song_and_art[1])
    song.artist_name = song_and_art[0]
    @@all<< song
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
  
end