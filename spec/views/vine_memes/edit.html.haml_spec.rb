require 'spec_helper'

describe "vine_memes/edit" do
  before(:each) do
    @vine_meme = assign(:vine_meme, stub_model(VineMeme,
      :token => "MyString",
      :url => "MyString",
      :top => "MyString",
      :bottom => "MyString"
    ))
  end

  it "renders the edit vine_meme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vine_meme_path(@vine_meme), "post" do
      assert_select "input#vine_meme_token[name=?]", "vine_meme[token]"
      assert_select "input#vine_meme_url[name=?]", "vine_meme[url]"
      assert_select "input#vine_meme_top[name=?]", "vine_meme[top]"
      assert_select "input#vine_meme_bottom[name=?]", "vine_meme[bottom]"
    end
  end
end
