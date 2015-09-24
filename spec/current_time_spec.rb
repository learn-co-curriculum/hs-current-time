describe "App" do

  describe "/current_time" do

    before do
      get "/current_time"
    end

    it "renders a status code of 200" do
      expect(last_response).to be_ok 
    end
  end
end