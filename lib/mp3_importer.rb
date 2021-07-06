class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    formatted_file = Array.new
      Dir["#{@path}/*"].each { |file|
        current_match = file.match(/[A-Z].*/)
        formatted_file << current_match.to_s
    }
    formatted_file
  end

  def import
    files.each { |file| Song.new_by_filename(file) }
  end
end
