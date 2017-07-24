require 'rails_helper'

RSpec.describe "garments/index", type: :view do
  before(:each) do
    assign(:garments, [
      Garment.create!(
        :sort => "Sort",
        :length => "Length",
        :notes => "MyText"
      ),
      Garment.create!(
        :sort => "Sort",
        :length => "Length",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of garments" do
    render
    assert_select "tr>td", :text => "Sort".to_s, :count => 2
    assert_select "tr>td", :text => "Length".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
