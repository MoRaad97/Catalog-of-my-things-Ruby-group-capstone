require_relative '../helper'

module MusicAlbumHandle
  def list_music_album
    if @albums.empty?
      puts 'The book list is empty. Create new Book Item!'
    else
      @albums.each_with_index do |album, index|
        puts "#{index + 1}.Label: #{album.label} Authored by: #{album.author}, Genre: #{album.genre}
        Publish Date: #{album.publish_date}"
      end
    end
  end

  # Create a book
  def create_music_album
    puts
    print 'Author: '
    author = gets.chomp.strip.capitalize

    print 'Label: '
    label = gets.chomp.strip.capitalize

    print 'Source: '
    source = gets.chomp.strip.capitalize

    print 'Genre: '
    genre = gets.chomp.strip.capitalize

    print 'Publish Date: '
    publish_date = gets.chomp.strip.capitalize

    print 'is it on Spotify [Y/N]: '
    on_spotify = gets.chomp.strip.capitalize
    case on_spotify
    when 'Y'
      true
    when 'Y'
      false
    else
      print 'Please Answer With Y or N'
      on_spotify = gets.chomp.strip.capitalize
    end

    @albums.push(MusicAlbum.new(genre, author, source, label, publish_date, on_spotify))
    puts 'Alubum Created Successfully!'
  end
end
