require 'pg'

class Bookmarks

  def self.all

    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end

    result = connection.exec "SELECT * FROM bookmarks"

    result.map do |row|
      row['url']
     end

   end

   def self.add_bookmark(bookmark)
     if ENV['RACK_ENV'] == 'test'  
       connection = PG.connect :dbname => 'bookmark_manager_test'
     else
       connection = PG.connect :dbname => 'bookmark_manager'
     end

     connection.exec "INSERT INTO bookmarks (url) VALUES ('#{bookmark}')"

   end

end
