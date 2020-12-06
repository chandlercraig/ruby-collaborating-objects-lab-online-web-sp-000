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
    self.all.select do |artist_instance|
      if artist_instance.name == artist_name
        return artist_instance
      elsif artist_instance.name == nil || artist_instance.name != artist_name
        self.new(artist_name)
      end
    end
  end

  def print_songs
    self.songs.collect {|song| song.name}
  end

end
