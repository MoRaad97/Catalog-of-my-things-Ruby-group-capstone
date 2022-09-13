require './app'

class Options
  attr_reader :object

  def initialize
    @object = [
      { option: '1 - List all books' },
      { option: '2 - List all music albums' },
      { option: '3 - List all movies' },
      { option: '4 - List all games' },
      { option: '5 - List all genres' },
      { option: '6 - List all labels' },
      { option: '7 - List all authors' },
      { option: '8 - List all sources' },
      { option: '9 - Add a book' },
      { option: '10 - Add a music album' },
      { option: '11 - Exit' }
    ]
  end
end

def main
  puts 'Welcome To the Catalog of things'
  options = Options.new
  options.object.each do |option|
    puts option[:option]
  end
  option = gets.chomp.to_i
  option = Option.new(option)
  option.selected
end

class Option
  attr_accessor

  def initialize(choice)
    @choice = choice
  end

  def selected
    case @choice
    when 1
      puts '1'
    when 2
      puts '2'
    when 3
      puts '3'
    when 4
      puts '4'
    when 5
      puts '5'
    when 6
      puts '6'
    when 7
      puts '7'
    when 8
      puts '8'
    when 9
      puts '9'
    when 10
      puts '10'
    when 11
      puts 'Thanks for using the catalog'
      exit
    else
      puts 'Invalid option'
    end
  end
end

main
