class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include Amistad::FriendModel
 
  has_many :truckins, through: :weigh_ins

  has_many :weigh_ins, :order => 'created_at DESC' do
  
  # Used to determine the goal in the weighin model
  # Will allow user to only post 1/day
    def today
      where(:created_at => (Time.now.beggining_of_day..Time.now))
    end
  end
  
  #validations

  validates :start_weight, :goal_weight, :first_name, :last_name, :about, presence: true
 

  # Sets the full name of the user

  def name
    "#{first_name} #{last_name}"
  end

  # Checks to see if user has added goal weight and checkins
  # and then
  # Displays the weight to go until user meets current goal

  def weight_until_goal
    if weigh_ins.count > 0 && goal_weight > 0
      weigh_ins.first.current_weight - goal_weight
    elsif goal_weight > 0
      start_weight - goal_weight
    end
  end

  # Allows user to upload a profile image
  
  mount_uploader :user_image, ImageUploader

end
