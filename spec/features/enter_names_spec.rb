# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
feature 'Entering player names' do
  scenario 'P1 enters name' do
    sign_in_and_play
    expect(page).to have_content 'John'
  end
  scenario 'P2 enters name' do
    sign_in_and_play
    expect(page).to have_content 'Not John'
  end
end
