require 'rails_helper'

RSpec.describe "labels/new", type: :view do
  before(:each) do
    assign(:label, Label.new(
      :name => "MyString",
      :items => nil
    ))
  end

  it "renders new label form" do
    render

    assert_select "form[action=?][method=?]", labels_path, "post" do

      assert_select "input#label_name[name=?]", "label[name]"

      assert_select "input#label_items_id[name=?]", "label[items_id]"
    end
  end
end