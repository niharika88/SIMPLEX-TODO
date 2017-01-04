require 'rails_helper'

RSpec.describe "labels/edit", type: :view do
  before(:each) do
    @label = assign(:label, Label.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit label form" do
    render

   puts "render custom form"
  end
end
