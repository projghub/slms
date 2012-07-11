class Question < ActiveRecord::Base
  attr_accessible :name, :quiz_id

  validates :name, presence: true
  belongs_to :quiz

  has_many :answers
end
