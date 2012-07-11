class PagesController < ApplicationController
  def index
  end

  def take_quiz
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions
  end

  def take_quiz_create
    @quizzes_users = params[:quiz][:answers] rescue nil
    @myquiz = Quiz.find(params[:quiz][:id])

    #logger.info 'QUIZZES_USERS' + @quizzes_users.inspect
    #logger.info 'MYQUIZ' + @myquiz.inspect

    @quizzes_users.each do |question, answer|
      @answer = Answer.find(answer)
      #logger.info 'ANSWER' +@answer.inspect
      @question = Question.find(@answer.question_id)
      #logger.info 'QUESTION' +@question.inspect
      @quiz = Quiz.find(@question.quiz_id)
      #logger.info 'QUIZ' +@quiz.inspect

      QuizzesUsers.create(
        user_id: @user.id,
        quiz_id: @quiz.id,
        question_id: @question.id,
        answer_id: @answer.id
      )
    end
  end

  def join_class
    ClassroomsUser.create(user_id: @user.id, classroom_id: params[:id])
    redirect_to classroom_path(params[:id]), notice: 'Successfully joined classroom'
  end
end
