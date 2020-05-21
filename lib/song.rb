class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []

  def initialize(name, artist=nil)
    @name = name
    if self.artist = artist @artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
    self
  end

  def self.create(name)
    self.new(name)
  end

  def artist=(artist)
    @artist = artist
    self.artist.add_song(self)
  end


end
