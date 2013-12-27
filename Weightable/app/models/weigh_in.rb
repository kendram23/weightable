class WeighIn < ActiveRecord::Base
	belongs_to :user
	has_many :truckins

  # validate :user_quota, :on => :create

  # def user_quota
  #   if self.user.weigh_ins.today.count == 1
  #     errors.add(:base, "Only 1 checkin allowed per day!")
  #   end
  # end

end
