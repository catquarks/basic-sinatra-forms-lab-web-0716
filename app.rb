require 'sinatra/base'

class App < Sinatra::Base

	get '/newteam' do 
		erb :newteam
	end

	post '/newteam' do 
		@keys = %w[name coach pg sg pf sf c]
		@team_info = @keys.each_with_object({}) {|item, hash| hash[item] = params[item]}
		
		erb :team
	end



end
