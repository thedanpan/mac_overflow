require 'rails_helper'

describe Question do


  it 'returns a Question object' do
   expect(build(:question)).to be_a(Question)
  end

  it "has a valid factory" do
    expect(build(:question)).to be_valid
  end

  it "is invalid without a title" do
    expect(build(:question, title: nil).valid?).to eq false
  end

  it "is invalid without a prompt" do
    expect(build(:question, prompt: nil).valid?).to eq false
  end
end