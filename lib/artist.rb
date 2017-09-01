require 'pry'
require_relative "./artist.rb"
require_relative "./song.rb"
require_relative "./genre.rb"

class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_obj)
    self.songs << song_obj
    song_obj.artist = self
  end

  def genres
    self.songs.map {|song| song.genre}
  end

end


# binding.pry
#
# ""
