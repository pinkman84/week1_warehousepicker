WAREHOUSE = {

  "bays" => {
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

}

def item_at_bay(bay)
  puts WAREHOUSE["bays"][bay]
end

