require_relative './item'

module MovieHandle
  def list_movies
    if @movies.empty?
      puts 'The movie list is empty. Create new Movie Item!'
    else
      @movies.each_with_index do |movie, index|
        puts "#{index}.
                Label: #{movie.label}
                Authored by: #{movie.author},
                Publish Date: #{movie.publish_date},
                Genre: #{movie.genre}"
      end
    end
  end

  def create_movie
    puts
    print 'Name: '
    name = gets.chomp.strip.capitalize
    print 'Genre: '
    genre = gets.chomp.strip.capitalize
    print 'Author: '
    author = gets.chomp.strip.capitalize
    print 'Source: '
    source = gets.chomp.strip.capitalize
    print 'Label: '
    label = gets.chomp.strip.capitalize
    print 'Publish Date: '
    publish_date = gets.chomp.strip.capitalize
    print 'Silent [Y/N]: '
    choice = gets.chomp.strip.capitalize
    silent = choice == 'Y'
    @movies.push(Movie.new(name, genre, author, source, label, publish_date, silent))
    puts 'Movie Created Successfully!'
  end
end
