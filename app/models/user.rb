class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :encrypted_password
  belongs_to :dorm
  belongs_to :school
  attr_accessible :name, :dorm_id, :school_id
  SCHOOLS = ['Stanford University']
  DORMS = ['Arroyo', 'Cedro', 'Junipero', 'Okada', 'Otero', 'Rinconada', 'Soto', 'Trancos', 'Burbank', 'Donner', 'Larkin', 'Serra', 'Twain', 'Casa Zapata', 'Ujama', 'Roble', 'Lagunita Court', 'Alondra', 'Cardenal', 'Faisan', 'Gavilan', 'Loro', 'Mirlo', 'Paloma']
validates :email, :format => { :with => /.*@stanford.com$/, :message => "must be a stanford email address"}  
end
