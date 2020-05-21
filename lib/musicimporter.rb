class MusicImporter
  attr_accessor :song, :genre, :artist
  @@all = []

  def initialize(filename)
    @filename = filename
    @files = []
    @@all << self
  end
