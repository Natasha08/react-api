require 'rails_helper'

describe TodosController do
  context "POST #create" do
    it "responds successfully with an HTTP 200 status code" do
      todo = create(:todo)
      post :create,
      params: { todo: todo[:text] }

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

end
