require_relative '../helper.rb'

describe Genre do
  
  before do
    @genre = Genre.new("MYZ Team")
    @book = Book.new("Drama", "us", "source", "book label", "22-3-2010", "us", "good")
  end 

  it 'Creating a new Genre' do
    expect(@genre.id.class).to match(Integer)
    expect(@genre.name).to eq("MYZ Team")
    expect(@genre.items).to eq([])
  end

  it 'should give us one book without duplicate' do
    @genre.add_item(@book)
    @genre.add_item(@book)
    expect(@genre.items).to eq([@book])
  end
  
end