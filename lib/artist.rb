require "pry"

class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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

  def songs
    Song.all.select do |song|
      song.artist
  end

  def add_song(song)
    if self.songs.include?(song) == false && song.artist != self
      song.artist = self
      @songs << song
    end
  end
end
