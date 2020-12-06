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
    song
  end

  def artist_name=(artist_name)
    if (self.artist.nil?)
      self.artist = Artist.new(artist_name)
    else
      self.artist.name = name
    end
  end

end
