require 'spec_helper'

describe "publications/edit" do
  before(:each) do
    @publication = assign(:publication, stub_model(Publication,
      :name => "MyString",
      :url => "MyString",
      :political_bent => "MyString"
    ))
  end

  it "renders the edit publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publication_path(@publication), "post" do
      assert_select "input#publication_name[name=?]", "publication[name]"
      assert_select "input#publication_url[name=?]", "publication[url]"
      assert_select "input#publication_political_bent[name=?]", "publication[political_bent]"
    end
  end
end
