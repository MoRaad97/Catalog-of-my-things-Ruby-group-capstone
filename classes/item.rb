require 'date'

class Item
  attr_reader :publish_date
  attr_accessor :archived

  def initialize(genre, author, source, label, publish_date)
    @id = rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = archived
  end

  def can_be_archived?
    edition_age = (Date.parse(@publish_date) - Date.today)
    return true if edition_age > 3652.5

    false
  end

  def move_to_archive
    @archived = can_be_archived?
  end
end
