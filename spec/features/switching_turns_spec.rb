feature 'switching turns' do
  scenario "game starts on player one's turn" do
    sign_in_and_play
    visit ("/play")
    expect(page).to have_content "Sapphire - your turn"
  end

  scenario "game starts on player one's turn" do
    sign_in_and_play
    visit ("/play")
    expect(page).to have_content "Sapphire - your turn"
  end

  scenario "player two's turn is next" do
    sign_in_and_play
    click_button "Attack"
    click_button "Switch!"
    expect(page).to have_content "Kat - your turn"
  end

end
