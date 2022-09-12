class Genera
  attr_accessor :items
  attr_reader :id, :name
  def initialize(id, name)
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.genera = self
  end
end
