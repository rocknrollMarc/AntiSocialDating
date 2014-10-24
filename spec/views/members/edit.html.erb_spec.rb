require 'rails_helper'

RSpec.describe "members/edit", :type => :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :Id => "",
      :first_name => "MyString",
      :last_name => "MyString",
      :photo => "",
      :info => "",
      :search_preference => "",
      :description => "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input#member_Id[name=?]", "member[Id]"

      assert_select "input#member_first_name[name=?]", "member[first_name]"

      assert_select "input#member_last_name[name=?]", "member[last_name]"

      assert_select "input#member_photo[name=?]", "member[photo]"

      assert_select "input#member_info[name=?]", "member[info]"

      assert_select "input#member_search_preference[name=?]", "member[search_preference]"

      assert_select "input#member_description[name=?]", "member[description]"
    end
  end
end
