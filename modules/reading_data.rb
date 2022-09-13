require 'json'
require_relative '../helper.rb'

module ReadData
  def read_genre
    File.open('./data/genre.json', 'r') do |file|
      return if file.size == 0

      genres_list = JSON.parse(file.read)
      genres_list.each { |genre| @genres << Genre.new(genre["name"]) }
    end
  end

  def read_authors
    File.open('./data/authors.json', 'r') do |file|
      return if file.size == 0

      authors_list = JSON.parse(file.read)
      authors_list.each { |author| @authors << Author.new(author["first_name"], author["first_name"]) }
    end
  end

  def read_labels
    File.open('./data/labels.json', 'r') do |file|
      return if file.size == 0

      labels_list = JSON.parse(file.read)
      labels_list.each { |label| @labels << Label.new(label["title"], label["color"]) }
    end
  end

  def read_source
    File.open('./data/source.json', 'r') do |file|
      return if file.size == 0

      sources_list = JSON.parse(file.read)
      sources_list.each { |source| @sources << Source.new(source["name"]) }
    end
  end

  def read_books
    File.open('./data/book.json', 'r') do |file|
      return if file.size == 0

      stored_books = JSON.parse(file.read)
      stored_books.each do |book|
        @books << Book.new(
          book['genre'], 
          book['author'],
          book['source'],
          book['label'],
          book['publish_date'],
          book['publisher'],
          book['cover_state'])
      end
    end
  end

  def read_music_album
    File.open('./data/music_album.json', 'r') do |file|
      return if file.size == 0
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
end
