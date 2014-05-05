class Style < ActiveRecord::Base

  enum category: [ :Feelings, :FoodAndDrinks, :Games, :Nature, :Home, :Brands ]
  has_many :packs

  validates :name, uniqueness: true, presence: true
  validates_presence_of :category

end
