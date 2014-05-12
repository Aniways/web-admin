class StylesController < ApplicationController
  def index
    @styles=Style.all
    @new_style = Style.new
  end

  def create
    style = Style.new(style_params)
    if style.save
      flash[:success] = "#{style_params['name']} created"
    else
      flash[:danger] = "Bad designer! #{style.errors.full_messages.to_sentence}" 	
    end	
    redirect_to styles_url
  end

  private

  def style_params
    params.require(:style).permit(:name, :category)
  end

end