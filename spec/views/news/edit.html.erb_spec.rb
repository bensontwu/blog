require 'rails_helper'

RSpec.describe "news/edit", type: :view do
  before(:each) do
    @news = assign(:news, News.create!(
      :name => "",
      :title => "",
      :content => "MyText"
    ))
  end

  it "renders the edit news form" do
    render

    assert_select "form[action=?][method=?]", news_path(@news), "post" do

      assert_select "input[name=?]", "news[name]"

      assert_select "input[name=?]", "news[title]"

      assert_select "textarea[name=?]", "news[content]"
    end
  end
end
