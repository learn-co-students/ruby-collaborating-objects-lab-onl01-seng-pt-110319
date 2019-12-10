class Artist 
  
  attr_accessor :name, :artist  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end
  
  def songs 
    @songs
  end 
  
 def self.all 
    @@all
  end 
  
  
  def add_song(song)
    @songs << song
  end 
  
 # def print_songs 
  #  self.songs.each {|song| song.name}
#end
end 