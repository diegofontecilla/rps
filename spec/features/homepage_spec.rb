feature 'Homepage' do
  scenario 'checking homepage message' do
    visit('/')
    expect(page).to have_content 'Rock-Paper-Scissor'
  end
end
