# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import strformat
import space_nimpkg/stations
import space_nimpkg/entities
import space_nimpkg/ui
import space_nimpkg/ships
import strutils

when isMainModule:
  var ship = jimi

  var player: Character
  player = Character(name: "Dave",
                    location: "start",
                    credits: 200,
                    ship: ship.name)

  
  var station = solo
  
  proc test() =
    echo(fmt"{player.name} has {player.credits} credits")
    player.credits = player.credits - 5
    echo (fmt"{player.name} has {player.credits} credits")
    echo (fmt"{player.name} is flying {player.ship}")

    echo (fmt"Cargo for {ship.name}: ")

    

    echo(ship.cargo[0].name, ": ", "Worth: ", ship.cargo[0].worth, " credits: ", ship.cargo[0].desc, " Station: ", station.name)

  test()
