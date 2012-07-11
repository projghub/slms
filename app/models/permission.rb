class Permission < ActiveRecord::Base
  attr_accessible :name

  has_many :permissions_users
  has_many :users, :through => :permissions_users
end
