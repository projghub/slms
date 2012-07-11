class User < ActiveRecord::Base
  attr_accessible :address, :city, :country, :email, :facebook_user_id, :first_name, :last_name, :phone, :postal_code, :region, :graph

  has_many :permissions_users
  has_many :permissions, :through => :permissions_users

  has_many :classrooms_users
  has_many :classrooms, :through => :classrooms_users

  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  def permissions?(permission)
    return self.permissions.find_by_name(permission).try(:name) == permission.to_s
  end
end
