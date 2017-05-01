class Farm < ActiveRecord::Base
	has_many :fields
	has_many :users
	has_many :farm_crops, dependent: :destroy
	has_many :crops, through: :farm_crops

	accepts_nested_attributes_for :farm_crops, allow_destroy: true

end
