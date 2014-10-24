require 'rails_helper'

RSpec.describe "articles/new", :type => :view do
  before(:each) do
    assign(:article, Article.new(
      :name => "MyString",
      :created => "",
      :description => "MyString",
      :text => "MyString"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_name[name=?]", "article[name]"

      assert_select "input#article_created[name=?]", "article[created]"

      assert_select "input#article_description[name=?]", "article[description]"

      assert_select "input#article_text[name=?]", "article[text]"
    end
  end
end
