import entities
import items

proc jimi*(ship_name: string): Ship =
    var ship1 = Ship(name: ship_name,
                     power: 120,
                     cargo: @[shipManual()])
    return ship1