require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :title => "MyString",
      :description => "MyText",
      :tag => "",
      :user => nil,
      :status => 1
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_title[name=?]", "item[title]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_tag[name=?]", "item[tag]"

      assert_select "input#item_user_id[name=?]", "item[user_id]"

      assert_select "input#item_status[name=?]", "item[status]"
    end
  end
end
