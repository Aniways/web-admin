class Icon < ActiveRecord::Base
	belongs_to :pack
	has_one :style, through: :pack
	validates :pack_id, presence: true
	validate :name, precence: true
end
