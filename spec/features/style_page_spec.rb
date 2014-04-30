require 'spec_helper'

feature 'styles index page' do
  scenario 'Designer enters the main page' do
    style_name = 'my_style'
    visit root_path
    #let(:my_style) { create(:style)}
    within(".simple_form") do
      fill_in 'style[name]', :with => style_name
      find('.btn-primary').click
    end
    expect(page).to have_css('h1', text: 'STYLES')
    expect(page).to have_css('a', text: style_name)
  end
end