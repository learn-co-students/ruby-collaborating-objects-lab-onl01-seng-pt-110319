class MP3Importer
  attr_accessor :path
  
  
  def initialize(filePath)
    @path = filePath
  end
  
  def files 
    Dir.glob("#{@path}/*.mp3").map {|file| file.gsub("#{@path}/","")}
  end
  
  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
  
  
  
  
end