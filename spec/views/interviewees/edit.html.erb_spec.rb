require 'rails_helper'

RSpec.describe "interviewees/edit", type: :view do
  before(:each) do
    @interviewee = assign(:interviewee, Interviewee.create!(
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit interviewee form" do
    render

    assert_select "form[action=?][method=?]", interviewee_path(@interviewee), "post" do

      assert_select "input#interviewee_name[name=?]", "interviewee[name]"

      assert_select "input#interviewee_email[name=?]", "interviewee[email]"
    end
  end
end