class Artist 
  attr_accessor :name, :song 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs
    Song.all.select {|song| song.artist == self} 
  end 
  
  def self.find_or_create_by_name(name)
    artist = @@all.find {|artist| artist.name == name}
    if artist == nil
      artist = Artist.new(name)
    end
    @@all.last 
  end 
 
  def print_songs 
    self.songs.each {|song| puts song.name} 
  end 
end 
  