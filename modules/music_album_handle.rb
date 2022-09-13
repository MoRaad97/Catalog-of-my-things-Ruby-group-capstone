require_relative '../helper'

module MusicAlbumHandle
  def list_music_album
    if @albums.empty?
      puts 'The music list is empty. Create new Music Album Item!'
    else
      @albums.each_with_index do |album, index|
        puts "[#{index + 1}]"
        puts "Label: #{album.label}"
        puts "Authored by: #{album.author}"
        puts "Genre:#{album.genre}"
        puts "Publish Date: #{album.publish_date}"
        puts
      end
    end
  end

  # Create a music album
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
    puts 'Album Created Successfully!'
  end
end
