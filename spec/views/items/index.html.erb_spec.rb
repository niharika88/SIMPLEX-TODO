require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :title => "Title",
        :description => "MyText",
        :tags => [""],
        :user => nil,
        :status => 2,
        :duedate => Time.now
      ),
      Item.create!(
        :title => "Title",
        :description => "MyText",
        :tags => [""],
        :user => nil,
        :status => 2,
        :duedate => Time.now
      )
    ])
  end

  it "renders a list of items" do


    current_user = nil
   
   
  end
end
