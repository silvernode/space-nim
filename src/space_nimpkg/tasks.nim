import entities
import system
import items
import tables
import ui
import ships
proc mining*(player: Character, ore: Item, turns: int): Character =
   
   
   var 
      player = player
      turns = turns

   while true:
      if turns > 0:
         if(player.ship.cargo.hasKey(ore.name)):
            player.ship.cargo[ore.name] += 1
            echo("Added 1 ore")
         else:
            player.ship.cargo[ore.name] = 1
            echo("Gathered 1 Ore")

      if turns == 0:
         break
      if turns > 0:
         turns -= 1
   return player   
