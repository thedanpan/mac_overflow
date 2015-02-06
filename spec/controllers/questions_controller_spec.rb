require 'rails_helper'

describe QuestionsController do

  describe 'Get #index' do
    it "populates an array with all the questions" do
      question1 = create(:question, title: "john", prompt: Faker::Lorem.paragraph, user_id: 1)
      question2 = create(:question, title: "smith", prompt: Faker::Lorem.paragraph, user_id: 1)
      get :index
      expect(assigns(:questions)).to match_array([question1, question2])
    end
  end


end
