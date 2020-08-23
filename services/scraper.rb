# scape ze sites
require 'open-uri'

class Scraper
  def run
    cams = %w(Rockpile Jackson Jackson2 MohrhardtRidge1 Geyser2)
    referrer = 'http://www.alertwildfire.org/'

    cams.each do |cam|
      src = "http://s3-us-west-2.amazonaws.com/alertwildfire-data-public/Axis-#{cam}/latest_full.jpg"

      Thread.new do
        loop do
          open(src, "Referer" => referrer) do |image|
            File.open("./public/images/#{cam.downcase}.jpg", 'wb') do |file|
              file.write(image.read)
            end
          end

          sleep 10
        end
      end
    end
  end
end
