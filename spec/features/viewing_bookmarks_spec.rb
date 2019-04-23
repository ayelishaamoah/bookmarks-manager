feature 'Viewing bookmarks' do
  scenario 'visiting index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'clicks view bookmarks button' do
    visit('/')
    click_button('View Bookmarks')
    expect(page).to have_content "Bookmarks"
  end
end
