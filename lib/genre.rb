require 'pry'
require_relative "./artist.rb"
require_relative "./song.rb"
require_relative "./genre.rb"

class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    self.songs.map {|song| song.artist}
  end

end


# binding.pry
#
# ""
