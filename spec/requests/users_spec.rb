require 'rails_helper'

Rspec.describe Api::V1::UsersController, type: :request do
	describe "POST/users" do
		before :each do
			auth = { provider: "facebook", uid: "12sadb1y23g12", info: { email: "a@gmail.com"}}
			post "/api/v1/usres", {auth: auth}
		end

		it { have_http_status(200)}

		it { change(User,:count).by(1)}

		it "responds with the user found or created" do
			json = JSON.parse(response.body)
			expect(josn["email"]).to eq("a@gamail.com")
		end
		
	end
end