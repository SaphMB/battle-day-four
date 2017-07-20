def sign_in_and_play
  visit ("/")
  fill_in :player_one_name, with: "Sapphire"
  fill_in :player_two_name, with: "Kat"
  click_button "May the battle begin!"
end 
