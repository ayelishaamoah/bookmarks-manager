require 'pg'

class Bookmarks

  def self.all

    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end

    result = connection.exec "SELECT * FROM bookmarks"

    result.map do |row|
      { url: row["url"], title: row["title"] }
   end

   end

   def self.add_bookmark(url:, title:)
     if ENV['ENVIRONMENT'] == 'test'
       connection = PG.connect :dbname => 'bookmark_manager_test'
     else
       connection = PG.connect :dbname => 'bookmark_manager'
     end

     connection.exec "INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}')"

   end

end
