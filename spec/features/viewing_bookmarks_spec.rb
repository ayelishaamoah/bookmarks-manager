feature 'Viewing bookmarks' do
  scenario 'visiting index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'clicks view bookmarks button' do
    visit('/')
    click_button('View Bookmarks')
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.netflix.com"
    expect(page).to have_content "www.amazon.co.uk"
  end
end
