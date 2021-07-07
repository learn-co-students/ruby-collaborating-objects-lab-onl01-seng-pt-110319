
class MP3Importer
  attr_accessor :path, :files, :song
  def initialize(path)
    @path = path
    @files = Dir.entries(path).select{|e|e.include?("-")}
  end
  
  def import
    @files.map{|filename|Song.new_by_filename(filename)}
  end
  
end