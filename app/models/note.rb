class Note < ActiveRecord::Base
	belongs_to :field
	has_many :memos
	has_many :crop_notes, dependent: :destroy
	has_many :crops, through: :crop_notes
	has_many :crop_type_notes, dependent: :destroy
	has_many :crop_types, through: :crop_type_notes

	accepts_nested_attributes_for :crop_type_notes, allow_destroy: true

end
