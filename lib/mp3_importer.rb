class MP3Importer

    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        #gsub will replace a filepath, Because you use gsub on a string to replace
        #asterisk takes all the filenames before the .mp3, its a wildcard character it matches zero or more characters
       Dir.glob("#{@path}/*.mp3").map { |file| file.gsub("#{@path}/", "") }
    end

    def import
        self.files.each do |file|
         Song.new_by_filename(file)


        end
    end
end