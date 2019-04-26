feature 'Viewing bookmarks' do
  scenario 'visiting index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'clicks view bookmarks button' do
    Bookmarks.add_bookmark(url: 'http://www.destroyallsoftware.com')
    Bookmarks.add_bookmark(url: 'http://www.makersacademy.com')
    Bookmarks.add_bookmark(url: 'http://www.twitter.com') 

    visit('/')
    click_button('View Bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.twitter.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end

feature 'Adding bookmarks' do
  scenario 'add one bookmark' do
    visit ('/')
    click_button('Add Bookmark')
    fill_in('url', with: 'http://www.google.com')
    click_button('Add Bookmark')
    expect(page).to have_content('http://www.google.com')
  end
end
