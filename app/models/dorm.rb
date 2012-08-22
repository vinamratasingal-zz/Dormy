class Dorm < ActiveRecord::Base
  belongs_to :school
  attr_accessible :name, :school_id
  has_many :users
  def self.search(name)
    where('name LIKE ?', "%#{name}%")
  end
end
