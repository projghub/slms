class AssignmentType < ActiveRecord::Base
  attr_accessible :name

  belongs_to :assignment

  validates :name, presence: true
end
