class FarmCropType < ActiveRecord::Base
	belongs_to :farm
	belongs_to :crop_type
end
