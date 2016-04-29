WAREHOUSE = {
 
    a1: 'needle',
    a2: "stop sign",
    a3: 'blouse',
    a4: 'hanger',
    a5: 'rubber duck',
    a6: 'shovel',
    a7: 'bookmark',
    a8: 'model car',
    a9: 'glow stick',
    a10: 'rubber band',

    b1: 'tyre swing',
    b2: 'sharpie',
    b3: 'picture frame',
    b4: 'photo album',
    b5: 'nail filer',
    b6: 'tooth paste',
    b7: 'bath fizzers',
    b8: 'tissue box',
    b9: 'deodorant',
    b10: 'cookie jar',

    c1: 'rusty nail',
    c2: 'drill press',
    c3: 'chalk',
    c4: 'word search',
    c5: 'thermometer',
    c6: 'face wash',
    c7: 'paint brush',
    c8: 'candy wrapper',
    c9: 'shoe lace',
    c10: 'leg warmers'
  

}



# def item_at_bay(bay)
#   puts WAREHOUSE["bays"][bay]
# end

# def get_item_at_location(value)

#   puts "What shelf location do you want to check? ("
#   value = gets.chomp

# end



def item_at_bay(location)
  return WAREHOUSE[location]
end

def location_of_item(product)
  return WAREHOUSE.key(product)
end


loop do
  puts "what location are you interested in? (a1-a10, b1-b10 or c1-c10)?: (if unknown please press q to move on)"
  location = gets.chomp.to_sym
  print item_at_bay(location)

  if location == 'q' 
  break

end

loop do
  puts "do you know what item you require? enter for location"
  product = gets.chomp

  puts "Your item is at #{location}"

  if product == false 
    puts "out of stock, please choose another product"
  end
end
end
