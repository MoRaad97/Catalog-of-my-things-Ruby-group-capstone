require_relative '../helper'

module GamesHandle
  def list_games
    if @games.empty?
      puts 'The game list is empty. Create new Game Item!'
    else
      @games.each_with_index do |game, index|
        puts "#{index + 1}.
                Name: #{game.name}
                Label: #{game.label}
                Authored by: #{game.author},
                Publish Date: #{game.publish_date},
                Genre: #{game.genre}"
      end
    end
  end

  def create_game
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

    print 'Publish Date [YYYY-MM-DD]: '
    publish_date = gets.chomp.strip.capitalize

    print 'Multi Player [Y/N]: '
    choice = gets.chomp.strip.capitalize
    multi_player = choice == 'Y'

    print 'Last Played At [YYYY/MM/DD]: '
    last_played_at = gets.chomp.strip

    @games.push(Game.new(name, genre, author, source, label, publish_date, multi_player, last_played_at))
    puts 'Game Created Successfully!'
  end
end
