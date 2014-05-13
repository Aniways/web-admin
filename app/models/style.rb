class Style < ActiveRecord::Base

  enum category: [ :Feelings, :FoodAndDrinks, :Games, :Nature, :Home, :Brands ]
  has_many :packs

  validates :name, uniqueness: true, presence: true
  validates_presence_of :category

  after_commit :invalidate_pack_order_cache, if: "view_order_changed?"

  def pack_order_by_name(pack_name)
    @order_by_name ||= packs_order
    @order_by_name[pack_name]
  end

  def packs_order
    order_by_name= {}
    if !self.view_order
      for pack in self.packs
        name = pack.name
        order_by_name[name] = {row:"1" ,col:"1" ,sizex:"1" ,sizey:"1", name: pack.name}
      end
    else  
      packs = ActiveSupport::JSON.decode(self.view_order) 
      for pack in packs
        name = pack['name']
        order_by_name[name] = {"row"=>"#{pack['row']}" ,"col"=>"#{pack['col']}" ,"sizex"=>"#{pack['size_x']}" ,"sizey"=>"#{pack['size_y']}", "name"=>"#{name}"}
      end
    end
    order_by_name
  end

  def invalidate_pack_order_cache
    @order_by_name = nil
  end

end
