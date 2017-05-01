class CropTypeNote < ActiveRecord::Base
	belongs_to :note
	belongs_to :crop_type
end
