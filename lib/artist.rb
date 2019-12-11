require 'pry'
class Artist

    @@all = []

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |s| s.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        self.all.find { |artist| artist.name == name} || self.new(name)
    end

    def print_songs
        self.songs.each { |songs| puts songs.name}
    end
end