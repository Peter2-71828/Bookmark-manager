feature 'delete bookmark' do
  scenario 'it deletes a bookmark' do
    visit('/')
    fill_in 'title', with: 'youtube'
    fill_in 'url', with: 'http://www.youtube.com'
    click_button "Add Bookmark"
    click_button "Delete_youtube"
    expect(page).not_to have_link('youtube', href: 'http://www.youtube.com')
  end
end
