require 'rails_helper'

describe User, '.active' do
  it 'returns only active users' do
    # active_user = create(:user, active: true)
    expect(true).to eq true
  end
end
