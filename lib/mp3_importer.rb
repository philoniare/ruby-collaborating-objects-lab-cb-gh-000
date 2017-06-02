require 'pry'
class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
    @files = Dir[@path+"/*.mp3"].collect{|filename| filename.split('/')[-1]}
  end
 def import
   #binding.pry
   @files.each{ |filename| Song.new_by_filename(filename) }
 end
end
