require 'open-uri'

get '/camera/:location' do
  url = "http://s3-us-west-2.amazonaws.com/alertwildfire-data-public/#{params[:location]}/latest_full.jpg"
  referrer = 'http://www.alertwildfire.org/'
  headers('Content-Type' => 'image/jpg')
  open(url, 'Referer' => referrer).read
end
