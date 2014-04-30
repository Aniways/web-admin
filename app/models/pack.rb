class Pack < ActiveRecord::Base
	validates :name, uniqueness: true, presence: true
	has_many :icons
	validates :icons, presence: true
	belongs_to :style
	validates :style_id, presence: true
end
