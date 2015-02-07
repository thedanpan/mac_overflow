class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    current_user.answers << @answer
    @question.answers << @answer
    if @answer.save
      redirect_to question_path(@question)
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
    @answer = Answer.find(params[:id])
    @question = Question.find(@answer.question_id)
    @answer.destroy
    redirect_to question_path(@question)
  end

  private

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:content, :question_id, :user_id)
  end
end
