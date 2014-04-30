class PacksController < ApplicationController
  def index
    @packs=Style.find(params["style_id"]).packs
    @style_name= Style.find(params["style_id"]).name
  end

  def show_image
    @pack = Pack.find(params[:id])
    @icon = @pack.icons(1)
    send_data @icon.asset_ldpi, :type => 'image/png',:disposition => 'inline'
  end
end