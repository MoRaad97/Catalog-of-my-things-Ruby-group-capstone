require_relative '../helper'

describe Source do
  before do
    @source = Source.new('MYZ Team')
    @book = Book.new('Drama', 'us', 'source', 'book label', '22-3-2010', 'us', 'good')
  end

  it 'Creating a new Source' do
    expect(@source.id.class).to match(Integer)
    expect(@source.name).to eq('MYZ Team')
    expect(@source.items).to eq([])
  end

  it 'should give us one book without duplicate' do
    @source.add_item(@book)
    @source.add_item(@book)
    expect(@source.items).to eq([@book])
  end
end
