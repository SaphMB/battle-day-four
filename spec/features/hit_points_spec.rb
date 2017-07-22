feature 'viewing hit points' do
  scenario "Player one can view player 2's hit points" do
    visit ("/play")
    expect(page).to have_content "Kat 70"
  end

  scenario "Player one can view their own hit points" do
    visit ("/play")
    expect(page).to have_content "Sapphire 70"
  end
end
