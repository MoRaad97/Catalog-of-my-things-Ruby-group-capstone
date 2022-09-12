require_relative '../helper'

describe MusicAlbum do
  before do
    @MusicAlbum1 = MusicAlbum.new('Drama', 'us', 'source', 'book label', '22-3-2010', true)
    @MusicAlbum2 = MusicAlbum.new('Drama', 'us', 'source', 'book label', '26-12-2015', true)
    @MusicAlbum3 = MusicAlbum.new('Drama', 'us', 'source', 'book label', '26-12-2010', false)
  end

  it 'Creating a new MusicAlbum' do
    expect(@MusicAlbum1.genre).to eq('Drama')
    expect(@MusicAlbum1.author).to eq('us')
    expect(@MusicAlbum1.source).to eq('source')
    expect(@MusicAlbum1.label).to eq('book label')
    expect(@MusicAlbum1.publish_date).to eq('22-3-2010')
    expect(@MusicAlbum1.on_spotify).to eq(true)
  end

  it 'can_be_archived? methode should give us true' do
    expect(@MusicAlbum1.can_be_archived?).to eq(true)
  end

  it 'can_be_archived? methode should give us false' do
    expect(@MusicAlbum2.can_be_archived?).to eq(false)
  end

  it 'can_be_archived? methode should give us false because on_spotify = false' do
    expect(@MusicAlbum3.can_be_archived?).to eq(false)
  end
end
