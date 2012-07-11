class Assignment < ActiveRecord::Base
  attr_accessible :assignment_type_id, :date_due, :name, :submission_type_id, :classroom_id

  belongs_to :classroom
  has_many :quizzes
  has_many :assignment_types#, :class_name => "AssignmentType", :foreign_key => "assignment_type_id"
  has_many :submission_types

  validates :name, presence: true
end
