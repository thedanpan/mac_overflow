require 'rails_helper'

describe Vote do
  it 'returns a Vote object' do
    vote = build(:vote)
    expect(vote).to be_a(Vote)
  end
end

describe Vote do
  before :each do
    @vote = Vote.create(
      votable_id: 1,
      votable_type: 'question',
      user_id: 1
      )
  end

  it "has a votable_id that is a Fixnum" do
    expect(@vote[:votable_id]).to be_an_instance_of(Fixnum)
  end

  it "has a votable_type that is a question" do
    expect(@vote[:votable_type]).to eq('question')
  end

  it "has a user_id that is a Fixnum" do
    expect(@vote[:user_id]).to be_an_instance_of(Fixnum)
  end
end
