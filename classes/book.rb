require_relative './item.rb'
class Book < Item
  attr_accessor :publisher,:cover_state
  def initialize(genre, author, source, label, publish_date, publisher, cover_state)
    super(genre, author, source, label, publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    if can_be_archived? || @cover_state = "bad"
      return true
    else 
      return false
    end
end