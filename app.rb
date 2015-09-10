require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/current_time' do
		@readable_time = Time.now.strftime("%l:%M%p")
		erb :current_time
	end

end