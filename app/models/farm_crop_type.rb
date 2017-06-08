class FarmCropType < ActiveRecord::Base
	belongs_to :farms
	belongs_to :crop_types
end
