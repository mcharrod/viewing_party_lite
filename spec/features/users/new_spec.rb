require 'rails_helper'

RSpec.describe 'User Registration page' do
  it 'can create a user' do

    visit '/users/new'

    fill_in('Name', with: 'John Doe')
    fill_in('Email', with: 'Johndoe@gmail.com')
    fill_in('Password', with: 'coolpassword123')
    fill_in('Password Confirmation', with: 'coolpassword123')
    
    click_button('Create User')

    expect(current_path).to eq("/users/#{User.last.id}")
  end

end
