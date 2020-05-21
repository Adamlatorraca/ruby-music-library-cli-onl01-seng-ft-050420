class MusicImporter
  attr_accessor :song, :genre, :artist, :path
  @@all = []

  def initialize(path)
    @path = path
    @@all << self
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    @files.create_from_filename(filename)
  end
end
