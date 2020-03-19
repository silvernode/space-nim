import entities
import system

proc mining*(player: Character, ore: Item) =
   
   var player: Character
   player.ship.cargo.add(ore)
   echo "Gathered 1 Ore"