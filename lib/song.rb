class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    song = self.new(file[1])
    artist = Artist.find_or_create_by_name(file[0])
    artist.add_song(song)
    song.artist = artist
    song
  end
  def artist_name=(name)
   if (self.artist.nil?)
     self.artist = Artist.find_or_create_by_name(name)
   else
     self.artist.name = name
   end
 end
end
