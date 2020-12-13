require "rails_helper"

RSpec.describe PostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/posts").to route_to("posts#index")
    end

    it "routes to #show" do
      expect(get: "/api/posts/1").to route_to("posts#show", id: "1")
    end
  end
end