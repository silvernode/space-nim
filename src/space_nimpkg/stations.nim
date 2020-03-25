import entities
import items
import tables



var solo* = Structure(
    name: "Solo Station",
    solarSystem: "Sol System",
    kind: "Station",
    power: 5000,
    state: "available")
solo.goods[ore.name] = 1
solo.goods[food.name] = 1