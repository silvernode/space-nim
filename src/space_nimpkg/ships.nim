import entities
import items

proc jimi*(ship_name: string): Ship =
    var ship1 = Ship(name: ship_name,
                     hp: 120,
                     cargo: @[book()])
    return ship1