import entities
import items


proc soloStation*(power: int, marketRate: int): Structure =
    var solo = Structure(name: "Solo Station",
                        kind: "Station",
                        power:power,
                        state: "available",
                        goods: @[fuel(40), food(20), weapons(100), ore(50)])