feature 'Viewing bookmarks' do
  scenario 'visiting index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'clicks view bookmarks button' do

    connection = PG.connect :dbname => 'bookmark_manager_test'

    connection.exec "INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com')"
    connection.exec "INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com')"
    connection.exec "INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com')"

    visit('/')
    click_button('View Bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.twitter.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end
