require 'bookmarks'

describe Bookmarks do

  describe '#all' do
    it 'returns an array of bookmarks' do
      Bookmarks.add_bookmark(url: 'http://www.destroyallsoftware.com')
      Bookmarks.add_bookmark(url: 'http://www.makersacademy.com')
      Bookmarks.add_bookmark(url: 'http://www.twitter.com')

      expect(Bookmarks.all).to include('http://www.destroyallsoftware.com')
      expect(Bookmarks.all).to include('http://www.makersacademy.com')
      expect(Bookmarks.all).to include('http://www.twitter.com')
    end
  end

  describe '#add_bookmark' do
    it 'should add a new bookmark to the database' do
      Bookmarks.add_bookmark(url: 'http://www.bbc.co.uk')
      expect(Bookmarks.all).to include 'http://www.bbc.co.uk'
    end
  end

end
