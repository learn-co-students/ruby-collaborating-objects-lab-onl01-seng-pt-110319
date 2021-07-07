class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  ## loads all the mp3 files in the path directory
  def files 
    Dir.glob("#{@path}/*.mp3").map {|file| file.gsub("#{@path}/","")}
  end
  
  ## imports the files into the library by creating songs from a $FILENAME
  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
end





























