class MusicImporter
  attr_accessor :song, :genre, :artist
  @@all = []

  def initialize(path)
    @path = path
    @@all << self
  end

end
