require 'pry'
require_relative "./artist.rb"
require_relative "./song.rb"
require_relative "./genre.rb"

class Artist
  attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    self.songs.collect {|song| song.genre}
  end
end


# binding.pry
#
# ""
