# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import strformat
import space_nimpkg/stations
import space_nimpkg/entities
import space_nimpkg/ui
import space_nimpkg/items
import space_nimpkg/ships
import space_nimpkg/tasks
import strutils
import tables

when isMainModule:
  
  var station = solo
  var player: Character
  player = Character(name: "Dave",
                    location: station,
                    credits: 200,
                    ship: jimi)

  
  
  
  proc test() =
    echo(fmt"{player.name} has {player.credits} credits")
    player.credits = player.credits - 5
    echo (fmt"{player.name} has {player.credits} credits")
    echo (fmt"{player.name} is flying {player.ship}")

    echo (fmt"Cargo for {player.ship.name}: ")

    ShowInventory(player)
  
    #echo(ship.cargo[0].name, ": ", "Worth: ", ship.cargo[0].worth, " credits: ", ship.cargo[0].desc, " Station: ", station.name)
  var turn: int
  turn = 0
  var input: string
  var input2: string
  
  while true:

    ShowInventory(player)
    if turn == 0:
      stdout.write("How many turns?: ")
      input2 = readLine(stdin)
      statusPrompt(player)
      input = readLine(stdin)

      turn = input2.parseInt()
      if input == "mine":
        player.ship.cargo[ore.name] = 1
        mining(player, ore.name)
        
      #turn = input.parseInt()
    
    

    
    if turn == 0:
      break
      
    if turn > 0:
      turn = turn - 1

    
