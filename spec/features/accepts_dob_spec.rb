require 'spec_helper'

feature 'Accept name and dob' do
  scenario 'submitting name' do
    sign_in_and_play_birthday
    expect(page).to have_content 'Hello there'
  end
end
