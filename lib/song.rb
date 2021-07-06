class Song
  attr_accessor :name, :artist
  @@all = []

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song
  end

  def initialize(name = "")
    @name = name
    @@all.push(self)
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end
end
