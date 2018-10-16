feature 'Hit Points' do
  scenario 'beginning of game both players have 60HP' do
    visit '/play'
    expect(page).to have_content 'Player 1: 60HP'
    expect(page).to have_content 'Player 2: 60HP'
  end
end
