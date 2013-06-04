require 'spec_helper'

describe "vine_memes/show" do
  before(:each) do
    @vine_meme = assign(:vine_meme, stub_model(VineMeme,
      :token => "Token",
      :url => "Url",
      :top => "Top",
      :bottom => "Bottom"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Token/)
    rendered.should match(/Url/)
    rendered.should match(/Top/)
    rendered.should match(/Bottom/)
  end
end
