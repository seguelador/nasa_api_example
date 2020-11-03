require 'net/http'
require 'json'

uri = URI('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY')
response = Net::HTTP.get(uri)

parsed_response = JSON.parse(response)

photos = parsed_response['photos']

photos.each do |photo|
  puts photo["rover"]["name"]
end
