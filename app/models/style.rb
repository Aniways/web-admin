class Style < ActiveRecord::Base
	has_many :packs
	validates :name, uniqueness: true, presence: true
end
