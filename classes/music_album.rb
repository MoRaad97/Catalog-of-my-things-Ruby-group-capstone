require_relative './item.rb'
class MusicAlbum < Item
  attr_accessor :on_spotify
  def initialize(genre, author, source, label, publish_date, on_spotify)
    super(genre, author, source, label, publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    if can_be_archived? && on_spotify == true
      return true
    else
      return false
    end
  end
end
