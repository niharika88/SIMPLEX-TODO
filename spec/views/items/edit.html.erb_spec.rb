require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "MyString",
      :description => "MyText",
      :tag => "",
      :user => nil,
      :status => 1
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_title[name=?]", "item[title]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_tag[name=?]", "item[tag]"

      assert_select "input#item_user_id[name=?]", "item[user_id]"

      assert_select "input#item_status[name=?]", "item[status]"
    end
  end
end
