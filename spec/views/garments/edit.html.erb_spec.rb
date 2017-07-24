require 'rails_helper'

RSpec.describe "garments/edit", type: :view do
  before(:each) do
    @garment = assign(:garment, Garment.create!(
      :sort => "MyString",
      :length => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit garment form" do
    render

    assert_select "form[action=?][method=?]", garment_path(@garment), "post" do

      assert_select "input[name=?]", "garment[sort]"

      assert_select "input[name=?]", "garment[length]"

      assert_select "textarea[name=?]", "garment[notes]"
    end
  end
end
