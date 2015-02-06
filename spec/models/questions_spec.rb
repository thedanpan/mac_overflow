require 'rails_helper'

describe Question do

  it "has a valid factory" do
    expect(build(:question)).to be_valid
  end

  it "is invalid without a title" do
    expect(build(:question, title: nil).valid?).to eq false
  end
end