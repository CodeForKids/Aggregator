puts "Deleting all pages..."
Page.delete_all

page_hashes = Scrapers.pages
puts "Got #{page_hashes.count} pages..."
Page.create(page_hashes)

puts "Assigning default image to pages without one..."
image_urls = [ "https://cdn.shopify.com/s/files/1/0223/1913/files/wallpaper-831610.jpg?29602",
  "http://cdn.shopify.com/s/files/1/0223/1913/files/IMG_0734_large.jpg?21804",
  "https://cdn.shopify.com/s/files/1/0223/1913/files/Screenshot_2014-06-15_01.09.46.png?29602",
  "https://cdn.shopify.com/s/files/1/0223/1913/files/aboutKids.jpg?29602",
  "https://cdn.shopify.com/s/files/1/0223/1913/files/Screenshot_2014-01-11_23.37.33.png?29602",
  "https://cdn.shopify.com/s/files/1/0223/1913/files/P3190024.JPG?29602",
  "https://cdn.shopify.com/s/files/1/0223/1913/files/Screen_Shot_2013-04-30_at_9.44.26_PM.png?29602",
  "https://cdn.shopify.com/s/files/1/0223/1913/files/DSC_2175.JPG?29602" ]
Page.where(image: nil).each do |p|
  p.update_attributes(image: image_urls.sample)
end
