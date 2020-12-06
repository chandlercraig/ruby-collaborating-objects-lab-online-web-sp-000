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
    track_title = filename.split(" - ")[1]
    track_artist = filename.split(" - ")[1]
    new_song = self.new(track_title.to_s)
    
  end

  def artist_name=(artist_name)
    our_artist = Artist.find_or_create_by_name(artist_name)
    self.artist = our_artist
  end

end
