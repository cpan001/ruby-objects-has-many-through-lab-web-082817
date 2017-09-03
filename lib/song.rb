require 'pry'
require_relative "./artist.rb"
require_relative "./song.rb"
require_relative "./genre.rb"

class Song
  attr_accessor :artist, :genre
  attr_reader :name

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
  end
end


# binding.pry
#
# ""
