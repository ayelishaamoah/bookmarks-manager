require 'bookmarks'

describe Bookmarks do

  describe '#all' do
    it 'returns an array of bookmarks' do
      bookmarks = [
        "www.google.com",
        "www.netflix.com",
        "www.amazon.co.uk"
      ]
      expect(Bookmarks.all).to eq bookmarks
    end
  end

end
