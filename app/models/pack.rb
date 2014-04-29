class Pack < ActiveRecord::Base
	validates :name, uniqueness: true, presence: true
	has_many :icon
	belongs_to :style
end
