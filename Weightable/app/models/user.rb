class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include Amistad::FriendModel   
 
  has_many :weigh_ins, :order => 'created_at DESC' do
  
    def today
      where(:created_at => (Time.now.beggining_of_day..Time.now))
    end
  end
  
  has_many :truckins, through: :weigh_ins

  def name
    "#{first_name} #{last_name}"
  end

  def weight_until_goal
    weigh_ins.first.current_weight - goal_weight
  end

end
