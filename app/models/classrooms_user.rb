class ClassroomsUser < ActiveRecord::Base
  attr_accessible :classroom_id, :user_id

  belongs_to :classroom
  belongs_to :user
end
