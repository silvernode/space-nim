# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import strformat
import space_nimpkg/entities
import space_nimpkg/ui
import space_nimpkg/ships
import strutils

when isMainModule:
  var ship1: Ship

  var player: Character
  player = Character(name: "Dave",
                    location: "start",
                    credits: 200,
                    ship: ship1.name)

  
  
  
  proc test() =
    echo(fmt"{player.name} has {player.credits} credits")
    player.credits = player.credits - 5
    echo (fmt"{player.name} has {player.credits} credits")
    echo (fmt"{player.name} is flying {player.ship}")

    var currentShip = jimi("dover", 120)
    echo (fmt"Cargo for {currentShip.name}: ")

    

    echo(currentShip.cargo[0].name, ": ", "Worth: ", currentShip.cargo[0].worth, " credits: ", currentShip.cargo[0].desc)

  test()
