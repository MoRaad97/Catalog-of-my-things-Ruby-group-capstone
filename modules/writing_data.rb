require 'json'
require_relative '../helper'

module WriteData
  def write_books
    File.open("./data/book.json", "w") do |file|
      books_to_store = []
      @books.each do |book| 
         books_to_store << {"genre": book.genre,
          "author": book.author,
          "label": book.label,
          "publish_date": book.publish_date,
          "publisher": book.publisher,
          "cover_state": book.cover_state,
          "source": book.source }
      end
      file.write JSON.generate(books_to_store)
    end
  end

  def write_music_albums
    File.open("./data/music_album.json", "w") do |file|
      albums_to_store = []
      @albums.each do |album| 
        albums_to_store << {"genre": album.genre,
          "author": album.author,
          "label": album.label,
          "publish_date": album.publish_date,
          "on_spotify": album.on_spotify,
          "source": album.source }
      end
      file.write JSON.generate(albums_to_store)
    end
  end
end
