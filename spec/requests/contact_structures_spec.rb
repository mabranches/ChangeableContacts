require 'rails_helper'

RSpec.describe "ContactStructures", type: :request do
  describe "GET /contact_structures" do
    it "works! (now write some real specs)" do
      get contact_structures_path
      expect(response).to have_http_status(200)
    end
  end
end
