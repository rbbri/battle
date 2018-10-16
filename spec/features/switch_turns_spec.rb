require 'pry'


feature 'Switch turns' do
  scenario 'after p1 turn' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Attack'
    expect(page).to have_content 'John: 50HP'
  end

end
