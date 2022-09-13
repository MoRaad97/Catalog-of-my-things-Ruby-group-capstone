require_relative '../helper.rb'

module ReadData
  def read_genre
    File.open('../data/genre.json', 'r') do |file|
      return if file.empty?

      genres_list = JSON.parse(file.read)
      genres_list.each { |name| @genres << Genre.new(name) }
    end
  end

  def read_source
    File.open('../data/source.json', 'r') do |file|
      return if file.empty?

      genres_list = JSON.parse(file.read)
      genres_list.each { |name| @sources << Source.new(name) }
    end
  end

  def read_books
    File.open('./data/book.json', 'r') do |file|
      return if file.empty?

      stored_books = JSON.parse(file.read)
      stored_books.each do |book|
        @books << Book.new(book['genre'], book['author'], book['source'], book['label'], book['publish_date'],
                           book['publisher'],
                           book['cover_state'])
      end
    end
  end

  def read_music_album
    File.open('./data/music_album.json', 'r') do |file|
      return if file.empty?

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
