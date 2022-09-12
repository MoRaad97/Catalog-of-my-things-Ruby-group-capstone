require_relative '../classes/item'

describe Item do
  before do
    @item1 = Item.new('Drama', 'Michael Connely', 'source', 'book label', '22-3-2010')
    @item2 = Item.new('Genre', 'Author', 'source', 'book label', '26-12-2015')
  end

  it 'Creating a new item' do
    expect(@item1.genre).to eq('Drama')
    expect(@item1.author).to eq('Michael Connely')
    expect(@item1.source).to eq('source')
    expect(@item1.label).to eq('book label')
    expect(@item1.publish_date).to eq('22-3-2010')
  end

  it 'can_be_archived? method should give us true because date is less than 10 years' do
    expect(@item1.can_be_archived?).to eq(true)
  end

  it 'can_be_archived? method should give us false because date is greater than 10 years' do
    expect(@item2.can_be_archived?).to eq(false)
  end

  it 'move_to_archive method should give us true because can_be_archived? returns true' do
    expect(@item1.move_to_archive).to eq(true)
  end

  it 'move_to_archive method should give us false because can_be_archived? returns true' do
    expect(@item2.move_to_archive).to eq(false)
  end
end
