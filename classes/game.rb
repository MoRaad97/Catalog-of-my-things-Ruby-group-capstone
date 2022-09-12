require_relative './item'
require 'date'

class Game < Item

    attr_accessor :name, :multi_player, :last_played_at

    def initialize(name ,multi_player , last_played_at, publish_date)
        super(last_played_at)
        @name = name
        @multi_player = multi_player
        @last_played_at = last_played_at
    end

    def can_be_archived?
      super && (Date.today.year - Date.parse(@last_played_at).year > 2)
    end
end
