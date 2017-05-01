class CropType < ActiveRecord::Base
	belongs_to :crop
	belongs_to :note
end
