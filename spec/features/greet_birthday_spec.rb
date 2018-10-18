require 'spec_helper'

feature 'Greet birthday' do
  scenario 'submitting name' do
    sign_in_and_play_birthday
    expect(page).to have_content 'Happy Birthday'
  end
end
