feature 'Heal' do
  scenario 'at game start' do
    sign_in_and_play
    expect(page).to have_button 'Heal'
  end
  scenario 'p1 heals' do
    sign_in_and_play
    click_button 'Heal'
    expect(page).to have_content 'John heals themself'
  end
end
