require_relative '../helper'

describe Book do
  before do
    @book1 = Book.new('Drama', 'us', 'source', 'book label', '22-3-2010', 'us', 'good')
    @book2 = Book.new('Drama', 'us', 'source', 'book label', '26-12-2015', 'us', 'good')
    @book3 = Book.new('Drama', 'us', 'source', 'book label', '26-12-2015', 'us', 'bad')
  end

  it 'Creating a new book' do
    expect(@book1.genre).to eq('Drama')
    expect(@book1.author).to eq('us')
    expect(@book1.source).to eq('source')
    expect(@book1.label).to eq('book label')
    expect(@book1.publish_date).to eq('22-3-2010')
    expect(@book1.publisher).to eq('us')
    expect(@book1.cover_state).to eq('good')
  end

  it 'can_be_archived? methode should give us true' do
    expect(@book1.can_be_archived?).to eq(true)
  end

  it 'can_be_archived? methode should give us false' do
    expect(@book2.can_be_archived?).to eq(false)
  end

  it 'can_be_archived? methode should give us true because cover_state is bad' do
    expect(@book3.can_be_archived?).to eq(true)
  end
end
