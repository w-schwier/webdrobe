require 'rails_helper'

RSpec.describe "garments/new", type: :view do
  before(:each) do
    assign(:garment, Garment.new(
      :sort => "MyString",
      :length => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders new garment form" do
    render

    assert_select "form[action=?][method=?]", garments_path, "post" do

      assert_select "input[name=?]", "garment[sort]"

      assert_select "input[name=?]", "garment[length]"

      assert_select "textarea[name=?]", "garment[notes]"
    end
  end
end
