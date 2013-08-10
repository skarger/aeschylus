require 'spec_helper'

describe "publications/new" do
  before(:each) do
    assign(:publication, stub_model(Publication,
      :name => "MyString",
      :url => "MyString",
      :political_bent => "MyString"
    ).as_new_record)
  end

  it "renders new publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publications_path, "post" do
      assert_select "input#publication_name[name=?]", "publication[name]"
      assert_select "input#publication_url[name=?]", "publication[url]"
      assert_select "input#publication_political_bent[name=?]", "publication[political_bent]"
    end
  end
end
