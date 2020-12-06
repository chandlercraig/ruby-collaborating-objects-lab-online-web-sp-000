require 'pry'

class Song
  attr_accessor :name, :artist

@@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    song = self.new(name)
    song.artist
  end
  
  def artist_name=(artist_name)
    our_artist = Artist.find_or_create_by_name(artist_name)
    our_artist
  end

end
