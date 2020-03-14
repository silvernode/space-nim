import entities
import items

proc jimi*(ship_name: string, power: int): Ship =
    var jimi = Ship(name: ship_name,
                     power: power,
                     cargo: @[shipManual()])
    return jimi

proc caroler*(ship_name: string, power: int): Ship =
    var caroler = Ship(name: ship_name,
                        power: power,
                        cargo: @[shipManual()])

proc yolen*(ship_name: string, power: int): Ship =
    var yolen = Ship(name: ship_name,
                     power: power,
                     cargo: @[shipManual()])

proc titan*(ship_name: string, power: int): Ship =
    var titan = Ship(name: ship_name,
                    power: power,
                    cargo: @[shipManual()])