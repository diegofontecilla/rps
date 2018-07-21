feature 'Homepage' do
  scenario 'checking homepage message' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
