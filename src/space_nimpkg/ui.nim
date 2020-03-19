import entities
import strformat
import colorize

proc ShowInventory* (player: Character) =
    echo(fmt"Inventory for {player.name}:")
    for i in player.ship.cargo:
        echo(fmt"{i.name} {i.quantity}")

proc statusPrompt*(player: Character) =
    var playerName = fgLightGreen(fmt"{player.name}")
    var playerCredits = fgLightYellow(fmt"{player.credits}CP")
    var playerShip = fgLightMagenta(fmt"{player.ship.name}")
    var playerLocation = fgLightCyan(fmt"{player.location.name}")
    stdout.write(fmt"{playerName} :: {playerCredits} :: {playerShip} :: {playerLocation} > ")