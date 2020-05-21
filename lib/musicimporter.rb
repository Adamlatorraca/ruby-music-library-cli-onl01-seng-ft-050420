class MusicImporter
  attr_accessor :song, :genre, :artist
  @@all = []

  def initialize(filename)
    @filename = filename
    @@all << self
  end

end
