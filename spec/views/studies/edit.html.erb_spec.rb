require 'rails_helper'

RSpec.describe "studies/edit", type: :view do
  before(:each) do
    @study = assign(:study, Study.create!(
      :name => "MyString",
      :language => nil
    ))
  end

  it "renders the edit study form" do
    render

    assert_select "form[action=?][method=?]", study_path(@study), "post" do

      assert_select "input#study_name[name=?]", "study[name]"

      assert_select "input#study_language[name=?]", "study[language]"
    end
  end
end
