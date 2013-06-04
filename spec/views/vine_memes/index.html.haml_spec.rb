require 'spec_helper'

describe "vine_memes/index" do
  before(:each) do
    assign(:vine_memes, [
      stub_model(VineMeme,
        :token => "Token",
        :url => "Url",
        :top => "Top",
        :bottom => "Bottom"
      ),
      stub_model(VineMeme,
        :token => "Token",
        :url => "Url",
        :top => "Top",
        :bottom => "Bottom"
      )
    ])
  end

  it "renders a list of vine_memes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Token".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Top".to_s, :count => 2
    assert_select "tr>td", :text => "Bottom".to_s, :count => 2
  end
end
