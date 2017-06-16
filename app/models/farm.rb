class Farm < ActiveRecord::Base
	has_many :fields
	has_many :users
	has_many :farm_crops, dependent: :destroy
	has_many :crops, through: :farm_crops
	has_many :farm_crop_types, dependent: :destroy
	has_many :crop_types, through: :farm_crop_types
	belongs_to :mst_pref
	has_many :messages

	accepts_nested_attributes_for :farm_crops, allow_destroy: true
	accepts_nested_attributes_for :farm_crop_types, allow_destroy: true

	#都道府県での農家検索
	scope :search_by_pref, -> (id){ where(mst_pref_id: id)} 
	#栽培品目での検索
	scope :with_crop, -> { includes(:crops)}
	scope :search_by_crop, -> (id){ where(crops: {id: id})}

end
