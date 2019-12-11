require 'pry'
class Song

    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(name)
        artist, song = name.split(" - ")
        new_song = Song.new(song)
        new_song.artist_name = artist 
        new_song
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end
end