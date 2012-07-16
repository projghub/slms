class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def create
    @quiz = Quiz.new(params[:quiz])

    if @quiz.save
      redirect_to @quiz, notice: 'Quiz was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @quiz = Quiz.find(params[:id])

    if @quiz.update_attributes(params[:quiz])
      redirect_to @quiz, notice: 'Quiz was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to quizzes_url
  end
end
