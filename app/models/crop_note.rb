class CropNote < ActiveRecord::Base
	belongs_to :note
	belongs_to :crop
end
