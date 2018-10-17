feature 'Hit Points' do
  scenario 'beginning of game both players have 60HP' do
    visit '/play'
    expect(page).to have_content 'Player 1: 60HP'
    expect(page).to have_content 'Player 2: 60HP'
  end
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_no_content 'Not John: 60HP'
  end
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Attack'
    expect(page).to have_no_content 'John: 60HP'
  end
end
