class MusicImporter
  attr_accessor :song, :genre, :artist
  attr_reader :path
  @@all = []

  def initialize(path)
    @path = path
    @@all << self
  end

end
