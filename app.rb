require_relative './helper.rb'

class App
  attr_reader :genres, :sources
  attr_accessor :albums, :books

  include BookHandle
  include MusicAlbumHandle
  include ReadData

  def initialize
    @books = []
    read_books

    @albums = []
    read_music_album

    @genres = []
    read_genre

    @sources = []
    read_source
  end
end
