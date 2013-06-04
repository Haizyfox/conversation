require "spec_helper"

describe VineMemesController do
  describe "routing" do

    it "routes to #index" do
      get("/vine_memes").should route_to("vine_memes#index")
    end

    it "routes to #new" do
      get("/vine_memes/new").should route_to("vine_memes#new")
    end

    it "routes to #show" do
      get("/vine_memes/1").should route_to("vine_memes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vine_memes/1/edit").should route_to("vine_memes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vine_memes").should route_to("vine_memes#create")
    end

    it "routes to #update" do
      put("/vine_memes/1").should route_to("vine_memes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vine_memes/1").should route_to("vine_memes#destroy", :id => "1")
    end

  end
end
