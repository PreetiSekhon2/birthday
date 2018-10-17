def sign_in_and_play
  visit ("/")
  fill_in :name, with: "Dave"
  fill_in :dob, with: "18.10.1966"
  click_button "Submit"
end
