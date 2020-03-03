# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import strformat
import space_nimpkg/entities
import strutils

when isMainModule:
  #var items = @["gun", "rocket"]
  var ship1: Ship
  ship1 = Ship(name: "Dover",
              hp: 100,
              cargo: @["fuel", "drugs"])

  var player: Character
  player = Character(name: "Dave",
                    location: "start",
                    credits: 200,
                    ship: ship1.name)

  
  
  

  echo(fmt"{player.name} has {player.credits} credits")
  player.credits = player.credits - 5
  echo (fmt"{player.name} has {player.credits} credits")
  echo (fmt"{player.name} is flying {player.ship}")
  echo(fmt"{player.ship} is carrying {ship1.cargo.join()}")
