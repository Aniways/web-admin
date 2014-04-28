class PacksController < ApplicationController
  def index
  	
    @packs=Style.find(params["style_id"]).packs
  end
end