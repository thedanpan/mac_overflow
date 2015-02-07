class QuestionsController < ApplicationController


#GET /questions
  def index
    @questions = Question.all
  end

#GET /questions/new
  def new
    @question = Question.new
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
    redirect_to user_path(current_user.id)
  end

# GET /questions/:id/edit
  def edit
    @question = Question.find(params[:id])
  end

# GET /questions/:id
  def show
    @question = Question.find(params[:id])
    @comments = @question.comments
  end

# PATCH  /questions/:id
  def update
    @question = Question.find(params[:id])
    @question.update!(question_params)
    redirect_to @question
  end
# DELETE /questions/:id
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to :root
  end

  private

    def question_params
      params.require(:question).permit(:title, :prompt)
    end

end
