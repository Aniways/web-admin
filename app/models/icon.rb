class Icon < ActiveRecord::Base

  belongs_to :pack
  has_one :style, through: :pack

  validates_presence_of :pack
  validate :name, precence: true

end
