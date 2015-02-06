class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  def index
    @answers = Answer.all
  end

  def show
  end

  def new
    @answer = Answer.new()
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to @answer
      render :show
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @answer.update(answer_params)
      redirect_to @answer
      render :show
    else
      render :edit
    end
  end

  def destroy
    @answer.destroy
    redirect_to answers_url
  end

  private

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:content, :question_id, :user_id)
  end
end
