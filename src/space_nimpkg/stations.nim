import entities
import items



var solo* = Structure(
    name: "Solo Station",
    kind: "Station",
    power: 5000,
    state: "available",
    goods: @[fuel, food, weapons, ore])