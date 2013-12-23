class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include Amistad::FriendModel   
  
  has_many :weigh_ins
  has_many :truckins, through: :weigh_ins    
end
