#require 'pry'
class Genre
  attr_reader :name 

  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end

  def songs
    Song.all.select {|s| s.genre == self}
  end

  def artist
    songs.map {|s| s.artist}
  end

  def self.all
    @@all
  end
end
