class Institution < ActiveRecord::Base
  attr_accessible :address, :city, :country, :name, :postal_code, :region

  validates :name, presence: true
end
