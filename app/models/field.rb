class Field < ActiveRecord::Base
	belongs_to :farm
	has_many :notes

	validates :name, presence: true
end
