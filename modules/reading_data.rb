require 'json'
require_relative '../helper'

module ReadData
  def read_genre
    File.open('./data/genre.json', 'r') do |file|
      return if file.size.zero?

      genres_list = JSON.parse(file.read)
      genres_list.each { |genre| @genres << Genre.new(genre['name']) }
    end
  end

  def read_authors
    File.open('./data/authors.json', 'r') do |file|
      return if file.size.zero?

      authors_list = JSON.parse(file.read)
      authors_list.each { |author| @authors << Author.new(author['first_name'], author['last_name']) }
    end
  end

  def read_labels
    File.open('./data/labels.json', 'r') do |file|
      return if file.size.zero?

      labels_list = JSON.parse(file.read)
      labels_list.each { |label| @labels << Label.new(label['title'], label['color']) }
    end
  end

  def read_source
    File.open('./data/source.json', 'r') do |file|
      return if file.size.zero?

      sources_list = JSON.parse(file.read)
      sources_list.each { |source| @sources << Source.new(source['name']) }
    end
  end

  def read_books
    File.open('./data/book.json', 'r') do |file|
      return if file.size.zero?

      stored_books = JSON.parse(file.read)
      stored_books.each do |book|
        @books << Book.new(
          book['genre'],
          book['author'],
          book['source'],
          book['label'],
          book['publish_date'],
          book['publisher'],
          book['cover_state']
        )
      end
    end
  end

  def read_music_album
    File.open('./data/music_album.json', 'r') do |file|
      return if file.size.zero?

      stored_albums = JSON.parse(file.read)
      stored_albums.each do |album|
        @albums << MusicAlbum.new(
          album['genre'],
          album['author'],
          album['source'],
          album['label'],
          album['publish_date'],
          album['on_spotify']
        )
      end
    end
  end

  def read_games
    File.open('./data/game.json', 'r') do |file|
      return if file.size.zero?

      stored_games = JSON.parse(file.read)
      stored_games.each do |game|
        @games << Game.new(
          game['name'],
          game['genre'],
          game['author'],
          game['source'],
          game['label'],
          game['publish_date'],
          game['multi_player'],
          game['last_played_at']
        )
      end
    end
  end

  def read_movies
    File.open('./data/movie.json', 'r') do |file|
      return if file.size.zero?

      stored_movies = JSON.parse(file.read)
      stored_movies.each do |movie|
        @movies << Movie.new(
          movie['name'],
          movie['genre'],
          movie['author'],
          movie['source'],
          movie['label'],
          movie['publish_date'],
          movie['silent']
        )
      end
    end
  end
end
