class WeighIn < ActiveRecord::Base
	belongs_to :user
	has_many :truckins

  # Allows user to upload an image with weighin
  
  mount_uploader :weigh_in_image, ImageUploader

  validate :user_quota, :on => :create

  def user_quota
    if user.weigh_ins.today.count >= 1
      errors.add(:base, "Only 1 checkin allowed per day!")
    end
  end

end
