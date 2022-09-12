require_relative '../classes/movie'

describe Movie do
  before do
    @movie = Movie.new('Friends', 'Comedy', 'author', 'source', 'label', '2010-10-10', true)
  end

  describe 'It should be instance of Movie' do
    it 'should be instance of Movie' do
      expect(@movie).to be_instance_of(Movie)
    end
  end

  it 'Creating a new Movie' do
    expect(@movie.name).to eq('Friends')
    expect(@movie.genre).to eq('Comedy')
    expect(@movie.author).to eq('author')
    expect(@movie.source).to eq('source')
    expect(@movie.label).to eq('label')
    expect(@movie.publish_date).to eq('2010-10-10')
    expect(@movie.silent).to eq(true)
  end

  it 'should return true if the movie is silent' do
    expect(@movie.can_be_archived?).to eq(true)
  end
end
