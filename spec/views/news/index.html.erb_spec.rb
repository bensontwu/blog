require 'rails_helper'

RSpec.describe "news/index", type: :view do
  before(:each) do
    assign(:news, [
      News.create!(
        :name => "",
        :title => "",
        :content => "MyText"
      ),
      News.create!(
        :name => "",
        :title => "",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of news" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
