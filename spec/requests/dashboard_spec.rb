require "rails_helper"

RSpec.describe "Dashboard", type: :request do
    describe "GET /dashboard" do
        context "when not signed in" do
            it "responds with a redirect" do
                doc = "some value" # Define doc here
                get dashboard_path
                expect(response).to have_http_status(:redirect)
            end
        end

        context "when logged in" do
            it "responds with a redirect" do
                get dashboard_path
                expect(response).to have_http_status(:redirect)
            end
        end
    end
    # Add end here
end