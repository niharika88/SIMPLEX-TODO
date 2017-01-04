require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "Title",
      :description => "MyText",
      :tags => [""],
      :user => User.create(email: "hiii"),
      :status => 2,
      :duedate => Time.now
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
   
  end
end
