import entities


proc shipManual*(): Item =
    var shipManual = Item( name: "Ship Manual",
                    desc: "The manual for this ship (can be sold)",
                    worth: 50)

    return shipManual

proc fuel*(): Item =
    var fuel = Item( name: "Fuel",
                    desc: "Used to power various machines including ships",
                    worth: 70)
    return fuel

proc food*(): Item =
    var food = Item( name: "Food",
                    desc: "Grown across the solar system, a valuable resource",
                    worth: 100)
    return food

proc weapons*(): Item =
    var weapons = Item( name: "Weapons",
                        desc: "Used for defense",
                        worth: 150)
    return weapons

proc ore*(): Item =
    var ore = Item( name: "Ore",
                    desc: "Used to build various types of structures",
                    worth: 64)
    return ore