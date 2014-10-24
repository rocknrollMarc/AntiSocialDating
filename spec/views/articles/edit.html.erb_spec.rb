require 'rails_helper'

RSpec.describe "articles/edit", :type => :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :name => "MyString",
      :created => "",
      :description => "MyString",
      :text => "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_name[name=?]", "article[name]"

      assert_select "input#article_created[name=?]", "article[created]"

      assert_select "input#article_description[name=?]", "article[description]"

      assert_select "input#article_text[name=?]", "article[text]"
    end
  end
end
