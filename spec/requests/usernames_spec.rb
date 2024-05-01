require "rails_helper"
require "faker"

RSpec.describe "Usernames" do
    let(:user) { FactoryBot.create(:user, username: Faker::Internet.username) }
    
    describe "GET new" do
        it "is successful" do
            get new_username_path
            expect(response).to have_http_status(:redirect) # change to :redirect if redirection is expected
        end
    end
    
    describe "PUT update" do
        it "updates the username" do
            original_username = user.username
            new_username = "foobar"
            put username_path(user), params: { 
                user: { 
                    username: new_username
                } 
            }
            user.reload
            puts user.errors.full_messages if user.username == original_username
            expect(user.username).not_to eq(original_username)
            expect(user.username).to eq(new_username)
            expect(response).to redirect_to(dashboard_path)
        end
    end
end