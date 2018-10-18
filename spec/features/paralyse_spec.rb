feature 'Paralyse' do
  scenario 'at game start' do
    sign_in_and_play
    expect(page).to have_button 'Paralyse'
  end
end
