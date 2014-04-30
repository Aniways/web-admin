class Pack < ActiveRecord::Base

  has_many :icons
  belongs_to :style

  validates :name, uniqueness: true, presence: true
  validates_presence_of :icons
  validates_presence_of :style

end
