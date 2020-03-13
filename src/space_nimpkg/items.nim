import entities


proc shipManual*(): Item =
    var shipManual = Item( name: "Ship Manual",
                    desc: "The manual for this ship (can be sold)",
                    worth: 50)

    return shipManual

proc fuel*(worth: int): Item =
    var fuel = Item( name: "Fuel",
                    desc: "Used to power various machines including ships",
                    worth: worth)
    return fuel

proc food*(worth: int): Item =
    var food = Item( name: "Food",
                    desc: "Grown across the solar system, a valuable resource",
                    worth: worth)
    return food

proc weapons*(worth: int): Item =
    var weapons = Item( name: "Weapons",
                        desc: "Used for defense",
                        worth: worth)
    return weapons

proc ore*(worth: int): Item =
    var ore = Item( name: "Ore",
                    desc: "Used to build various types of structures",
                    worth: worth)
    return ore