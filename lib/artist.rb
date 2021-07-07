require 'pry'

class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end
  
  def self.find_or_create_by_name(name)
    @@all.find {|art|art.name == name} || Artist.new(name)
  end
  
  def print_songs
    self.songs.each{|s|puts s.name}
  end
  
end