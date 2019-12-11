require 'pry'

class Artist 
  ## setter getter
  attr_accessor :name 
  
  ## assigning a class variable to an empty array
  @@all = []
  
  ## accepts a anme for the artist, store all Artist intsances into class variable @@all
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  ## list all songs that belong to this Artist
  def songs
    Song.all.select {|s| s.artist == self}
  end
  
  ## keeps track of an artist's songs
  def add_song(song)
    song.artist = self
  end
  
  ## always returns an Artist instance
  def self.find_or_create_by_name(name)
    self.all.find {|artist| artist.name == name} || self.new(name)
  end
  
  ## lists all of the artist's songs
  def print_songs
    self.songs.each {|s| puts s.name}
  end
 
 end