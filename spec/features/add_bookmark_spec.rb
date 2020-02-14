feature 'add bookmark' do
  scenario 'it adds a bookmark' do
    visit('/')
    fill_in 'title', with: 'youtube'
    fill_in 'url', with: 'http://www.youtube.com'
    click_button "Add Bookmark"
    expect(page).to have_link('youtube', href: 'http://www.youtube.com')
  end
end
