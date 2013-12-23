class WeighIn < ActiveRecord::Base
	belongs_to :user
	has_many :truckins
end
