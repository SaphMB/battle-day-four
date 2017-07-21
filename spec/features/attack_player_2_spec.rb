# USER STORY
# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature 'attacking the opponent' do
  scenario 'player 1 attacks player 2, HP reduces' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Kat 60HP")
  end



end
