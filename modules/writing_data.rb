require 'json'
require_relative '../helper'

module WriteData
  def write_books
    File.open('./data/book.json', 'w') do |file|
      books_to_store = []
      @books.each do |book|
        books_to_store << { genre: book.genre,
                            author: book.author,
                            label: book.label,
                            publish_date: book.publish_date,
                            publisher: book.publisher,
                            cover_state: book.cover_state,
                            source: book.source }
      end
      file.write JSON.pretty_generate(books_to_store)
    end
  end

  def write_music_albums
    File.open('./data/music_album.json', 'w') do |file|
      albums_to_store = []
      @albums.each do |album|
        albums_to_store << { genre: album.genre,
                             author: album.author,
                             label: album.label,
                             publish_date: album.publish_date,
                             on_spotify: album.on_spotify,
                             source: album.source }
      end
      file.write JSON.pretty_generate(albums_to_store)
    end
  end

  def write_movies
    File.open('./data/movie.json', 'w') do |file|
      movies_to_store = []
      @movies.each do |movie|
        movies_to_store << { name: movie.name,
                             genre: movie.genre,
                             author: movie.author,
                             source: movie.source,
                             label: movie.label,
                             publish_date: movie.publish_date,
                             silent: movie.silent }
      end
      file.write JSON.pretty_generate(movies_to_store)
    end
  end

  def write_games
    File.open('./data/game.json', 'w') do |file|
      games_to_store = []
      @games.each do |game|
        games_to_store << { name: game.name,
                            genre: game.genre,
                            author: game.author,
                            source: game.source,
                            label: game.label,
                            publish_date: game.publish_date,
                            multi_player: game.multi_player,
                            last_played_at: game.last_played_at }
      end
      file.write JSON.pretty_generate(games_to_store)
    end
  end
end
