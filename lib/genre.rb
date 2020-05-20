#require 'pry'
class Genre
  attr_reader

  @@all = []

  def initialize(genre)
    @genre = genre 
    @@all << self 
  end 

  def songs 
    Song.all.select {|s| s.genre == self}
  end 

  def self.all 
    @@all 
  end 
end
