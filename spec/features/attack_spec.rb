feature 'Attack' do
  scenario 'p1 attacks p2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'John attacked Not John!'
  end
end
