class Classroom < ActiveRecord::Base
  attr_accessible :date_end, :date_start, :grade_level_id, :name, :reference, :teacher_id

  validates :teacher_id, presence: true
  validates :name, presence: true

  has_many :assignments

  has_many :classrooms_users
  has_many :users, :through => :classrooms_users

  belongs_to :user, :class_name => "User", :foreign_key => "teacher_id"
end
