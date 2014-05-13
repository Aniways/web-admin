class StylesController < ApplicationController
  respond_to :json, only: :update
  
  def index
    @styles=Style.all
    @new_style = Style.new
  end

  def create
    style = Style.new(style_new_params)
    if style.save
      flash[:success] = "#{style_params['name']} created"
    else
      flash[:danger] = "Bad designer! #{style.errors.full_messages.to_sentence}" 	
    end	
    redirect_to styles_url
  end

  def update
    style = Style.find(params['id'])
    style.update_attributes(style_update_params)
    respond_with(@style)
  end

  def show
    @style = Style.find(params['id'])
  end

  private

  def style_new_params
    params.require(:style).permit(:name, :category)
  end

  def style_update_params
    params.require(:style).permit(:view_order)
  end

end