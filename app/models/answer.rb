class Answer < ActiveRecord::Base
  attr_accessible :correct, :name, :question_id

  validates :name, presence: true

  belongs_to :question
end
