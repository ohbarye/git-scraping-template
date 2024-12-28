require 'nokogiri'
require 'open-uri'
require 'json'
require 'debug'

# Write your own scraping code here
url = "https://example.com"
html = URI.open(url).read
doc = Nokogiri::HTML(html)
items = doc.css('p').map do |item|
  {
    text: item.text,
  }
end

File.write('result.json', JSON.pretty_generate(items))
