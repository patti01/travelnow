require_relative 'scraper'

Destination.destroy_all

puts "Destroying old data..."

puts "Creating new seed..."



destination1= Destination.create(
destination_name: "Madrid",
photo_link: "https://images.kiwi.com/photos/600x600/madrid_es.jpg",
transport_price: scraper("Madrid").text.strip,
)


destination2= Destination.create(
destination_name: "Barcelone",
transport_price: scraper("Barcelona").text.strip,
photo_link: "https://images.kiwi.com/photos/600x600/barcelona_es.jpg"
)

destination3= Destination.create(
destination_name: "Porto",
transport_price: scraper("Porto").text.strip,
photo_link: "https://images.kiwi.com/photos/600x600/porto_pt.jpg"
)

destination4= Destination.create(
destination_name: "Venise",
transport_price: scraper("Venice").text.strip,
photo_link: "https://images.kiwi.com/photos/600x600/venice_it.jpg"
)

destination5= Destination.create(
destination_name: "Berlin",
transport_price: scraper("Berlin").text.strip,
photo_link: "https://images.kiwi.com/photos/600x600/berlin_de.jpg"
)

destination6= Destination.create(
destination_name: "Milan",
transport_price: scraper("Milan").text.strip,
photo_link: "https://images.kiwi.com/photos/600x600/milan_it.jpg"
)

destination7= Destination.create(
destination_name: "Amsterdam",
transport_price: scraper("Amsterdam").text.strip,
photo_link: "https://images.kiwi.com/photos/600x600/amsterdam_nl.jpg"
)

destination8= Destination.create(
destination_name: "Dublin",
transport_price: scraper("Dublin").text.strip,
photo_link: "https://images.kiwi.com/photos/600x600/dublin_ie.jpg"
)


puts "Seeded"


