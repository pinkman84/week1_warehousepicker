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

# print WAREHOUSE.keys.index(:c5 ) = 14
# print WAREHOUSE.values.index('nail filer') = 24
# print WAREHOUSE.values = an array of all the values



# print WAREHOUSE.keys[0 .. 5].length # this moves all the keys into an array [this range shows what each item is].length shown how long the area is or in this instance how far apart the items are
# print WAREHOUSE.values[0 .. 5].length # this moves all the values into an array [this range shows what each item is].length shown how long the area is or in this instance how far apart the items are


def intro()
   puts "Welcome, are you checking whats at a shelf location (option 1)? or are you checking to see where an item is (option  2)? select 1 or 2 to continue: "
   response = gets.chomp.to_i
    if response == 1 
      multi_location_search
    elsif response == 2
      multi_item_search

    end
end

# #this function tells you what item is at the bay you type in, only works for one item
def item_at_bay(location)
  return WAREHOUSE[location]
end

# #this function tells you what bay the item you tyoe in belongs in
def location_of_item(product)
  return WAREHOUSE.key(product)
end

def multi_location_search
  loc_arr = []
  i = 0
  print "how many locations do you want to search?: "
  locations = gets.chomp.to_i
  until i >= locations 
    print "\nwhat location(s) are you interested in? (a1-a10, b1-b10 or c1-c10)?: "
    location = gets.chomp.to_sym
    x = item_at_bay(location)
    loc_arr <<  x
    i += 1
  end
  print loc_arr
  print "\nyour items are #{distance_apart_bays(loc_arr)} bays apart"
end

def multi_item_search
  it_arr = []
  i = 0
  print "\nhow many items are you trying to find?: "
  num = gets.chomp.to_i
  until i >= num
    print "what item are you trying to find?: "
    product = gets.chomp
    y = location_of_item(product)
    it_arr << y
    i += 1
  end
  print it_arr
  print "\nyour locations are #{distance_apart_items(it_arr)} bays apart"
end

def distance_apart_bays(array)
  values_array = WAREHOUSE.values
  distance_checker = []
  for bay in array
    distance_checker << values_array.index(bay)
  end
  return x = distance_checker.max - distance_checker.min
end

def distance_apart_items(array)
  keys_array = WAREHOUSE.keys
  distance_checker = []
  for bay in array
    distance_checker << keys_array.index(bay)
  end
  return x = distance_checker.max - distance_checker.min
end




intro

