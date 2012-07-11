class SubmissionType < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true
  belongs_to :assignment
end
