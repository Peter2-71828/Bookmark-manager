feature 'viewing bookmarks' do

  scenario 'it shows me all the bookmarks' do
    visit('/bookmark_list')
    expect(page).to have_content "makers"
    expect(page).to have_content "destroy all software"
    expect(page).to have_content "google"
  end

end
