describe "App" do

  describe "/current_time" do

    before do
      @current_time = Time.now
      get "/current_time"
    end

    it "renders a status code of 200" do
      expect(last_response).to eq(200) 
    end

    it "has a view called 'current_time.erb'" do
      expect {File.read("views/current_time.erb")}.to_not raise_error
    end

    it "has the current time" do 
      if last_response.status == 200
        expect(last_response.body).to include(@current_time.strftime("%l:%M"))
      else
        fail "Your app isn't responding to GET /current_time. Did you create that route?"
      end
    end

    it "displays the time using ERB" do
      expect(File.read("views/current_time.erb")).to include("<%=")
    end

  end
end