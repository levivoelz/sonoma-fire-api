require 'open-uri'

get '/camera/:location' do
  redirect "http://api.nvseismolab.org/camera/#{params[:location]}"
end
