require 'bookmarks'

describe Bookmarks do

  describe '#all' do
    it 'returns an array of bookmarks' do
      Bookmarks.add_bookmark(url: 'http://www.destroyallsoftware.com', title: "Destroy Software")
      Bookmarks.add_bookmark(url: 'http://www.makersacademy.com', title: "Makers Academy")
      Bookmarks.add_bookmark(url: 'http://www.twitter.com', title: "Twitter")

      expect(Bookmarks.all).to include(url: 'http://www.destroyallsoftware.com', title: "Destroy Software")
      expect(Bookmarks.all).to include(url: 'http://www.makersacademy.com', title: "Makers Academy")
      expect(Bookmarks.all).to include(url: 'http://www.twitter.com', title: "Twitter")
    end
  end

  describe '#add_bookmark' do
    it 'should add a new bookmark to the database' do
      Bookmarks.add_bookmark(url: 'http://www.bbc.co.uk', title: "BBC")
      expect(Bookmarks.all).to include(url: 'http://www.bbc.co.uk', title: "BBC")
    end
  end

end
