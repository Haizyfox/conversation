require 'spec_helper'

describe "VineMemes" do
  describe "GET /vine_memes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get vine_memes_path
      response.status.should be(200)
    end
  end
end
