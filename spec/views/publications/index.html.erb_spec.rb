require 'spec_helper'

describe "publications/index" do
  before(:each) do
    assign(:publications, [
      stub_model(Publication,
        :name => "Name",
        :url => "Url",
        :description => "MyText",
        :political_bent => "Political Bent"
      ),
      stub_model(Publication,
        :name => "Name",
        :url => "Url",
        :description => "MyText",
        :political_bent => "Political Bent"
      )
    ])
  end

  it "renders a list of publications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Political Bent".to_s, :count => 2
  end
end
