class MusicImporter
  attr_accessor :song, :genre, :artist, :path
  @@all = []

  def initialize(path)
    @path = path
    @@all << self
  end

end
