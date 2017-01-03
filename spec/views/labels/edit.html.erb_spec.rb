require 'rails_helper'

RSpec.describe "labels/edit", type: :view do
  before(:each) do
    @label = assign(:label, Label.create!(
      :name => "MyString",
      :items => nil
    ))
  end

  it "renders the edit label form" do
    render

    assert_select "form[action=?][method=?]", label_path(@label), "post" do

      assert_select "input#label_name[name=?]", "label[name]"

      assert_select "input#label_items_id[name=?]", "label[items_id]"
    end
  end
end
