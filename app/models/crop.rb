class Crop < ActiveRecord::Base
	has_many :crop_types
	has_many :farm_crops, dependent: :destroy
	has_many :farms, through: :farm_crops
	has_many :crop_notes, dependent: :destroy
	has_many :notes, through: :crop_notes

	accepts_nested_attributes_for :crop_notes, allow_destroy: true
end
