require 'rails_helper'

RSpec.describe 'landing page' do
  it 'displays title of app' do
    visit '/'

    expect(page).to have_content('Welcome to Viewing Party Lite!')
  end

  it 'has button to create new user' do
    visit '/'

    click_on "Register as a new user"

    expect(current_path).to eq("/users/new")
  end

  it 'can list all register users' do
    user1 = User.create(name: 'Homer Timmons', email: 'homertimmons@msn.com', password: 'password123')
    user2 = User.create(name: 'Phil Coll', email: 'p23745@gmail.com', password: 'password123')
    user3 = User.create(name: 'Elard Green', email: 'est55@hotmail.com', password: 'password123')

    visit '/'
    expect(page).to have_content(user1.email)
    expect(page).to have_content(user2.email)
    expect(page).to have_content(user3.email)
  end
end
