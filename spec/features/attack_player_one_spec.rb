feature 'switching turns' do
  scenario "player two's turn is next" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Ouch! Kat recieved a blow!"
  end
end
