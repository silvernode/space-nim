# SHIPS
import objects
var 
    draco* = Ship(
        name: "Draco",
        attack: 2,
        defense: 4,
        cargo: @[]
    )

    scythe* = Ship(
        name: "Scythe",
        attack: 4,
        defense: 2

    )

    hobo* = Ship(
        name: "Hobo",
        attack:1,
        defense: 5
    )

# STATIONS

    genesis* = Station(
        name: "Genesis",
        msg: "Welcome to Genesis, your new beginning",
        location: Location(x: 0, y: 0)
    )


# ITEMS

    laser* = Item(
        name:"Laser",
        desc: "A powerful laser"
    )