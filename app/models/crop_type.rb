class CropType < ActiveRecord::Base
	belongs_to :crop
	belongs_to :note
	has_many :farms, through: :farm_crop_types
	has_many :farm_crop_types, dependent: :destroy

	accepted_nested_fattributes_for :farm_crop_types, allow_destroy: true
end
