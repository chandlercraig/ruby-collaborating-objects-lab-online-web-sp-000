require 'pry'

class Artist
  attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(artist_name)
    self.all.collect do |artist_instance|
      self.new(artist_name) unless artist_instance.include?(artist_name)
      artist_instance
    end
  end

  def print_songs
    self.songs.collect {|song| song.name}
  end

end
