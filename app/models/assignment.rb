class Assignment < ActiveRecord::Base
  attr_accessible :assignment_type_id, :date_due, :name, :submission_type_id, :classroom_id

  belongs_to :classroom
  has_many :quizzes
  belongs_to :assignment_type
  belongs_to :submission_type

  validates :name, presence: true
end
