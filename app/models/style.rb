class Style < ActiveRecord::Base

  enum category: [ :Feelings, :FoodAndDrinks, :Games, :Nature, :Home, :Brands ]
  has_many :packs

  validates :name, uniqueness: true, presence: true
  validates_presence_of :category


  def getPacksOrder
    order_by_name= {}
    packs = ActiveSupport::JSON.decode(self.view_order)
    for pack in packs
      name = pack['name']
      order_by_name[name] = {"row"=>"#{pack['row']}" ,"col"=>"#{pack['col']}" ,"sizex"=>"#{pack['size_x']}" ,"sizey"=>"#{pack['size_y']}", "name"=>"#{name}"}
    end
    order_by_name
  end

end
