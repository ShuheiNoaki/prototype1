class Crop < ActiveRecord::Base
	has_many :crop_types
	has_many :farm_crops, dependent: :destroy
	has_many :farms, through: :farm_crops
	has_many :crop_notes, dependent: :destroy
	has_many :notes, through: :crop_notes

	accepts_nested_attributes_for :crop_notes, allow_destroy: true

	#栽培品目での検索
	scope :with_crop, -> { includes(:crops)}
	scope :search_by_crop, -> (id){ where(crops: {id: id})}

	#品種での検索
	scope :with_crop_type, -> { includes(:crop_types)}
	scope :search_by_crop_type, -> (id){ where(crop_types: {id: id})}
end
