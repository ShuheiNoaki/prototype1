class Farm < ActiveRecord::Base
	has_many :fields
	has_many :users
	has_many :farm_crops, dependent: :destroy
	has_many :crops, through: :farm_crops
	belongs_to :mst_pref

	accepts_nested_attributes_for :farm_crops, allow_destroy: true

	#都道府県での農家検索
	scope :search_by_pref, -> (id){ where(mst_pref_id: id)} 
	#栽培品目での検索
	scope :with_crop, -> { joins(:crops)}
	scope :search_by_crop, -> (id){ where(id: id)}

end
