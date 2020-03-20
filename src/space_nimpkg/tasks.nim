import entities
import system
import tables
proc mining*(player: Character, ore: string) =
   
   var player: Character
   player.ship.cargo[ore] += 1
   echo "Gathered 1 Ore"