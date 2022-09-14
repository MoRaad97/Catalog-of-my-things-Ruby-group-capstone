require_relative '../classes/label'
require_relative '../classes/item'

describe Label do
  before :each do
    @label1 = Label.new('label1', 'red')
    @item1 = Item.new('Drama', 'Michael Connely', 'source', 'book label', '22-3-2010')
  end

  it 'Creating a new label' do
    expect(@label1.title).to eq('label1')
    expect(@label1.color).to eq('red')
    expect(@label1.items).to eq([])
  end

  it 'Pushes an item to the items array' do
    @label1.add_item(@item1)
    expect(@label1.items.length).to eq(1)
  end

  it 'Checks if the item is added to the items array' do
    @label1.add_item(@item1)
    expect(@label1.items).to eq([@item1])
  end
end
