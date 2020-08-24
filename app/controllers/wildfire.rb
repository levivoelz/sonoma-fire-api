get '/wildfire/:camera' do
  url = "http://s3-us-west-2.amazonaws.com/alertwildfire-data-public/#{params[:camera]}/latest_full.jpg"
  referrer = 'http://www.alertwildfire.org/'
  headers("Content-Type" => "image/jpg")
  body(open(url, "Referer" => referrer).read)
end
