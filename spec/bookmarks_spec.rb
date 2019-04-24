require 'bookmarks'

describe Bookmarks do

  describe '#all' do
    it 'returns an array of bookmarks' do
      bookmarks = [
        'http://www.makersacademy.com',
         'http://www.google.com',
         'http://www.destroyallsoftware.com'
      ]
      expect(Bookmarks.all).to eq bookmarks
    end
  end

end
