require "spec_helper"

describe CoffeeBeansController do
  describe "routing" do

    it "routes to #index" do
      get("/coffee_beans").should route_to("coffee_beans#index")
    end

    it "routes to #new" do
      get("/coffee_beans/new").should route_to("coffee_beans#new")
    end

    it "routes to #show" do
      get("/coffee_beans/1").should route_to("coffee_beans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coffee_beans/1/edit").should route_to("coffee_beans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coffee_beans").should route_to("coffee_beans#create")
    end

    it "routes to #update" do
      put("/coffee_beans/1").should route_to("coffee_beans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coffee_beans/1").should route_to("coffee_beans#destroy", :id => "1")
    end

  end
end
