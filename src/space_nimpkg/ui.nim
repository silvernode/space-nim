import entities
import strformat
import colorize
import tables
import ships

proc ShowInventory* (player: Character) =
    echo(fmt"Inventory for {player.name}:")
    for k, v in pairs(player.ship.cargo):
        echo(k, v)

proc statusPrompt*(player: Character) =
    var playerName = fgLightGreen(fmt"{player.name}")
    var playerCredits = fgLightYellow(fmt"{player.credits}CP")
    var playerShip = fgLightMagenta(fmt"{player.ship.name}")
    var playerLocation = fgLightCyan(fmt"{player.location.name}")
    stdout.write(fmt"{playerName} :: {playerCredits} :: {playerShip} :: {playerLocation} > ")