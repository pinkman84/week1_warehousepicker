WAREHOUSE = {
    
    a10: 'rubber band',
    a9: 'glow stick',
    a8: 'model car',
    a7: 'bookmark',
    a6: 'shovel',
    a5: 'rubber duck',
    a4: 'hanger',
    a3: 'blouse',
    a2: "stop sign",
    a1: 'needle',
    
    

    c1: 'rusty nail',
    c2: 'drill press',
    c3: 'chalk',
    c4: 'word search',
    c5: 'thermometer',
    c6: 'face wash',
    c7: 'paint brush',
    c8: 'candy wrapper',
    c9: 'shoe lace',
    c10: 'leg warmers',
    
    b1: 'tyre swing',
    b2: 'sharpie',
    b3: 'picture frame',
    b4: 'photo album',
    b5: 'nail filer',
    b6: 'tooth paste',
    b7: 'bath fizzers',
    b8: 'tissue box',
    b9: 'deodorant',
    b10: 'cookie jar'

}



# def item_at_bay(bay)
#   puts WAREHOUSE["bays"][bay]
# end

# def get_item_at_location(value)

#   puts "What shelf location do you want to check? ("
#   value = gets.chomp

# end

def intro()
   puts "Welcome, are you checking whats at a shelf location (option 1)? or are you checking to see where an item is (option  2)? select 1 or 2 to continue: "
   response = gets.chomp.to_i
    if response == 1 
      looking_for_item
    elsif response == 2
      looking_for_bay
    end
end


def item_at_bay(location)
  return WAREHOUSE[location]
end

def location_of_item(product)
  return WAREHOUSE.key(product)
end

def multi_locations
  puts "How many locations are you checking today?: "
  num = gets.chomp.to_i
  #num will equal the number of index' we want to look at once I convert the hash into an array. I must then make the index' that are searched for into an array, sort them and make sure it fully populates the area with everything inbetween so i can use .length to give the distance
end

def multi_products
  puts "How many items do you need to find?: "
  num = gets.chomp
  #i will need to do the same as above but make sure i convert the values to keys before i convert it into an array. then the process should be the same
end


def looking_for_item
  
  print "\nwhat locations are you interested in? (a1-a10, b1-b10 or c1-c10)?: (if unknown please press q to move on) "
  location = gets.chomp.to_sym
  print item_at_bay(location)

end

def looking_for_bay

  print "\ndo you know what item you require? enter for location: "
  product = gets.chomp
  print location_of_item(product)
end


intro



