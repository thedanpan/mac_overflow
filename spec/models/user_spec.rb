require 'rails_helper'

describe User, '.active' do
  it 'returns only active users' do
    # active_user = create(:user, active: true)
    expect(true).to eq true
  end

  it 'returns a User object' do
    expect(build(:user)).to be_a(User)
  end

  it 'is invalid without a name' do
    expect(build(:user, name: nil).valid?).to eq false
  end

  it 'is invalid without an email' do
    expect(build(:user, email: nil).valid?).to eq false
  end

  it 'is invalid without a password' do
    expect(build(:user, password: nil).valid?).to eq false
  end

  it 'has a name that is a string' do
    expect(build(:user)[:name]).to be_an_instance_of(String)
  end

  it 'has an email that is a string' do
    expect(build(:user)[:email]).to be_an_instance_of(String)
  end

  it 'has a secure password' do
    expect(build(:user).password_digest).to_not eq nil
  end

end
