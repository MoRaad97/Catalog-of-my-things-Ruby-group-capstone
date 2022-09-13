require_relative '../helper'

module BookHandle
  # List all books
  def list_books
    if @books.empty?
      puts 'The book list is empty. Create new Book Item!'
    else
      @books.each_with_index do |book, index|
        puts "#{index}.
        Label: #{book.label}
        Authored by: #{book.author},
        Publish Date: #{book.publish_date},
        Genre: #{book.genre}"
      end
    end
  end

  # Create a book
  def create_book
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

    print 'Publisher: '
    publisher = gets.chomp.strip.capitalize

    print 'cover_state [bad/good]: '
    cover_state = gets.chomp.strip.capitalize

    @books.push(Book.new(genre, author, source, label, publish_date, publisher, cover_state))
    puts 'Book Created Successfully!'
  end
end
