require 'rails_helper'

describe Answer do
  it 'returns an Answer object' do
   expect(build(:answer)).to be_a(Answer)
  end

  it "has a valid factory" do
    expect(build(:answer)).to be_valid
  end

  it "is invalid without content" do
    expect(build(:answer, content: nil).valid?).to eq(false)
  end

  it "is invalid without a question_id" do
    expect(build(:answer, question_id: nil).valid?).to eq(false)
  end

   it "is invalid without a user_id" do
    expect(build(:answer, user_id: nil).valid?).to eq(false)
  end

  it "has content that is a string" do
    expect(build(:answer)[:content]).to be_an_instance_of(String)
  end

  it "has a question_id that is a Fixnum" do
    expect(build(:answer)[:question_id]).to be_an_instance_of(Fixnum)
  end

  it "has a user_id that is a Fixnum" do
    expect(build(:answer)[:user_id]).to be_an_instance_of(Fixnum)
  end

end
