class User < ActiveRecord::Base
	belongs_to :farm
	has_many :memos

	validates :username, presence: true
	validates :email, presence: true
	validates :password, presence: true
end
