require 'open-uri'
require 'nokogiri'

def scraper(destination_name)
  html_file = open("https://www.numbeo.com/cost-of-living/in/#{destination_name}").read
  html_doc = Nokogiri::HTML(html_file)


  html_doc.search('.data_wide_table tr:nth-of-type(31) .priceValue').each do |element|
    transport_price = element.text.strip
  end
end
