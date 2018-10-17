require 'pry'

feature 'game over' do
  scenario 'P1 wins' do
    sign_in_and_play
    super_attack
    expect(page).to have_content('John wins!')
  end
  scenario 'P2 dies' do
    sign_in_and_play
    super_attack
    expect(page).to have_content('Not John did not survive')
  end
end
