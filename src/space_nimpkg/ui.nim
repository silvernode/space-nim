import entities

proc ShowInventory* (items: Character) =

    for i in items.ship.cargo:
        echo i.name