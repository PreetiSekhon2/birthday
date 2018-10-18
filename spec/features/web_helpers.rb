def sign_in_and_play_birthday
  visit ("/")
  fill_in :name, with: "Dave"
  select("18" , :from=>"day")
  select("10" , :from=>"month")
  select("1956" , :from=>"year")
  click_button "Submit"
end

def sign_in_and_play_nobirthday
  visit ("/")
  fill_in :name, with: "Mary"
  select("1" , :from=>"day")
  select("10" , :from=>"month")
  select("1956" , :from=>"year")
  click_button "Submit"
end
