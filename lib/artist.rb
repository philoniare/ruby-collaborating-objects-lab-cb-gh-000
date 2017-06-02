class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  def save
    @@all << self
  end
  def self.find_or_create_by_name(name)
    artist = @@all.find{|artist| artist.name == name}
    if artist.nil?
      artist = self.new(name)
    end
    artist
  end
  def add_song(song)
    song.artist_name = @name
    @songs << song
  end
  def self.all
    @@all
  end
  def songs
    @songs
  end
  def print_songs
    @songs.each{|song| puts song.name }
  end
end
