class QuizzesUsers < ActiveRecord::Base
  attr_accessible :answer_id, :question_id, :quiz_id, :user_id

  belongs_to :user
  belongs_to :quiz
end
