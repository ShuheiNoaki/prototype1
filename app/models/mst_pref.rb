class MstPref < ActiveRecord::Base
	has_many :farms

	#都道府県での農家検索
	scope :search_by_pref, -> (id){ where(mst_pref_id: id)} 
end
