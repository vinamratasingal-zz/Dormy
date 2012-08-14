class Dorm < ActiveRecord::Base
  belongs_to :school
  attr_accessible :name
  has_many :users
end
