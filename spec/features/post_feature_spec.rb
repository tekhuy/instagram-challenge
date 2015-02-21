feature 'Posts' do

  context 'By default' do

    scenario 'No pictures have been added' do
      visit '/'
      expect(page).to have_content 'No posts'
      expect(page).to have_link 'Add an image'
    end

  end

  context 'Viewing posts' do

    scenario 'Creating a post' do
      visit '/'
      click_link 'Add an image'
      attach_file 'Image', 'spec/support/instagram.png'
      click_button 'Post Image'
      expect(page).to have_css("img")
      expect(page).not_to have_content 'No posts'
    end

  end

end