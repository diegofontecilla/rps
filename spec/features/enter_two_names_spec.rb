feature 'Enter two names' do
  scenario 'submit two names' do
    visit ('/')
    fill_in :player_1_name, with: 'diego'
    fill_in :player_2_name, with: 'fran'
    click_button 'Submit'
    expect(page).to have_content 'diego v/s fran'
  end
end
