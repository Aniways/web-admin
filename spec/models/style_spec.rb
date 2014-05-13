require 'spec_helper'

describe Style do

  before do
    @style = create(:style)
  end

  subject { @style }
  it {should respond_to :name}
  it {should respond_to :packs}
  it {should respond_to :category}
  it {should validate_presence_of :name}
  it {should validate_presence_of :category}
  it {should validate_uniqueness_of(:name) }
  it {should have_many(:packs)}
end