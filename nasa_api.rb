require 'httparty'
require 'json'

response = HTTParty.get('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY')
parsed_response = JSON.parse(response.body)

parsed_response['photos'].each do |photo|
  puts photo["rover"]["name"]
end
