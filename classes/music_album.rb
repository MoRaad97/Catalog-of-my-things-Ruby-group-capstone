require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(genre, author, source, label, publish_date, on_spotify)
    super(genre, author, source, label, publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    if super && @on_spotify == true
      true
    else
      false
    end
  end
end
