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

   it "is invalid without a user_id" do
    expect(build(:question, user_id: nil).valid?).to eq false
  end

  it "has a title that is a string" do
    expect(build(:question)[:title]).to be_an_instance_of(String)
  end

  it "has a prompt that is a string" do
    expect(build(:question)[:prompt]).to be_an_instance_of(String)
  end

  it "has a user_id that is a Fixnum" do
    expect(build(:question)[:user_id]).to be_an_instance_of(Fixnum)
  end

end