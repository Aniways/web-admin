require 'spec_helper'

describe Pack do
  before do
    style = create(:style)
    @pack = create(:pack, style: style)
  end

  subject { @pack }
  it {should validate_presence_of :name}
  it {should validate_uniqueness_of(:name) }
  it {should respond_to :name}
  
  it {should respond_to :icons}
  it {should have_many(:icons)}
  it {should validate_presence_of :icons}
  
  it {should validate_presence_of :style_id}
  it {should belong_to(:style)}
end