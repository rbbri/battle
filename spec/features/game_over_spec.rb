require 'pry'

feature 'game over' do
  scenario "P1 wins" do
    sign_in_and_play
    super_attack
    binding.pry
    expect(page).to have_content("John wins!")
  end
  scenario "P2 dies" do
    sign_in_and_play
    super_attack
  end
end
