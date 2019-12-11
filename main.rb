require 'open-uri'
require 'nokogiri'

url = 'https://www.google.com/maps?cid=13610674890151249774'
html = open(url) { |result| result.read }

document = Nokogiri::HTML(html)
parse_content = document.at('.section-layout')

p parse_content
