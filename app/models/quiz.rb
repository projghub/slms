class Quiz < ActiveRecord::Base
  attr_accessible :assignment_id, :name

  validates :name, presence: true
  belongs_to :assignment

  has_many :questions
end
