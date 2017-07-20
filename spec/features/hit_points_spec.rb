feature 'viewing hit points' do
  scenario "Player one can view player 2's hit points" do
    visit ("/play")
    expect(page).to have_content "Kat 70"
  end
end
