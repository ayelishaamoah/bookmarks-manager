require 'pg'

def clear_table

  p "Setting up test database..."

  connection = PG.connect :dbname => 'bookmark_manager_test'

  connection.exec 'TRUNCATE TABLE bookmarks'
end
