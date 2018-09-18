feature 'Player 1 choose' do
  scenario '1 of the options' do
    visit('/')
    fill_in :player_1_name, with: 'Diego'
    click_button 'Submit'
    expect(page).to have_content 'Diego v/s the computer'
    visit('/play')
    click_on 'Rock'
    click_button 'Submit'
    visit('/winner')
    expect(page).to have_content 'diego chose rock'
  end
end
