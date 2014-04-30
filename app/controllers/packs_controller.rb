class PacksController < ApplicationController
  def index
  	
    @packs=Style.find(params["style_id"]).packs
    @style_name= Style.find(params["style_id"]).name
  end
end