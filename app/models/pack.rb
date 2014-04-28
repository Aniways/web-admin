class Pack < ActiveRecord::Base
	has_many :icon
	belongs_to :style
end
