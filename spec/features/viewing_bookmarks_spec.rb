feature 'Viewing bookmarks' do
  scenario 'visiting index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'clicks view bookmarks button' do
    Bookmarks.add_bookmark(url: 'http://www.destroyallsoftware.com', title: "Destroy Software")
    Bookmarks.add_bookmark(url: 'http://www.makersacademy.com', title: "Makers Academy")
    Bookmarks.add_bookmark(url: 'http://www.twitter.com', title: "Twitter")

    visit('/')
    click_button('View Bookmarks')
    expect(page).to have_content "Destroy Software"
    expect(page).to have_content "Makers Academy"
    expect(page).to have_content "Twitter"
  end

  scenario 'clicks a bookmark link' do
    Bookmarks.add_bookmark(url: "http://www.destroyallsoftware.com", title: "Destroy Software")
    visit('/')
    click_button('View Bookmarks')
    expect(page).to have_link("Destroy Software", href: "http://www.destroyallsoftware.com")
  end
end

feature 'Adding bookmarks' do
  scenario 'add one bookmark' do
    visit ('/')
    click_button('Add Bookmark')
    fill_in('url', with: 'http://www.google.com')
    fill_in('title', with: 'Google')
    click_button('Add Bookmark')
    expect(page).to have_content('Google')
  end
end
