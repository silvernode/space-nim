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
  
  var turn: int
  var input: string
  var input2: int
  
  turn = 0
  while true:

    
    if turn == 0:
      statusPrompt(player)
      input = readLine(stdin)
      if input == "mine":
        
        
        stdout.write("How many turns?: ")
        input2 = readLine(stdin).parseInt()
      
      

        turn = input2

        player = mining(player, ore, turn)
      elif input == "q":
        quit()
      ShowInventory(player)
        
    
    if turn == 0:
      break
      
    if turn > 0:
      turn = turn - 1

    
