require 'spec_helper'

feature 'styles pages' do

  scenario 'given I have two styles' do
    style = create(:style)
    @pack = create(:pack, style: style)
    visit root_path
    first('a.list-group-item').click  
    expect(page).to have_css('h1', text: style.name)
    find('.glyphicon-circle-arrow-left').click
    expect(page).to have_css('h1', text: 'STYLES')
  end

  scenario 'Designer enters the main page' do
    style_name = 'my_style'
    visit root_path
    within(".simple_form") do
      fill_in 'style[name]', :with => style_name
      all('#style_category option')[1].select_option
      find('.btn-primary').click
    end
    expect(page).to have_css('h1', text: 'STYLES')
    expect(page).to have_css('a', text: style_name)
  end


  
end