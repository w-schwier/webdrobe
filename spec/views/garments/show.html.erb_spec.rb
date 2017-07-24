require 'rails_helper'

RSpec.describe "garments/show", type: :view do
  before(:each) do
    @garment = assign(:garment, Garment.create!(
      :sort => "Sort",
      :length => "Length",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sort/)
    expect(rendered).to match(/Length/)
    expect(rendered).to match(/MyText/)
  end
end
