class QuestionsController < ApplicationController


#GET /questions
  def index
    @questions = Question.all
  end

#GET /questions/new
  def new
    if current_user
      render 'new'
    else
      redirect_to :root
    end
  end

#POST /questions
  def create
    @question = Question.create(question_params)
    current_user.questions << @question
    render 'show'
  end

end
