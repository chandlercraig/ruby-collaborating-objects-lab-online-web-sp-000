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
    track_artist = filename.split(" - ")[0]
    new_song = self.new(track_title.to_s)
    new_song.artist_name= track_artist.to_s
    artist_object = Artist.all.find {|artist_instance| artist_instance.name == track_artist}
    new_song.artist = artist_object

  end

  def artist_name=(artist_name)
    our_artist = Artist.find_or_create_by_name(artist_name)
    self.artist = our_artist
  end

end
