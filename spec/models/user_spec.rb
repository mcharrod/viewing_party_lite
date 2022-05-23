require 'rails_helper'

describe User do
  describe 'validations' do
    it { should validate_uniqueness_of(:email)}
    it { should validate_presence_of(:password)}
    it { should have_secure_password}
  end

  it 'encrypts password' do
    user = User.create(name: 'Meg', email: 'meg@test.com', password: 'password123', password_confirmation: 'password123')

    expect(user).to_not have_attribute(:password)
    expect(user.password_digest).to_not eq('password123')
  end
end
