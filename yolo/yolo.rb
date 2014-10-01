require 'bundler'
Bundler.require

puts "In 6 days, it will be #{6.days.from_now}"

puts "What do you want to search for?"
search = gets
results = Geocoder.search(search)
lat_lng = results.first.data["geometry"]["location"].values.join(",")

Launchy.open "https://www.google.com/maps/@#{lat_lng},14z"
