import entities
import strformat
import colorize

proc ShowInventory* (items: Character) =

    for i in items.ship.cargo:
        echo i.name

proc statusPrompt*(player: Character) =
    var playerName = fgLightGreen(fmt"{player.name}")
    var playerCredits = fgLightYellow(fmt"{player.credits}CP")
    var playerShip = fgLightMagenta(fmt"{player.ship.name}")
    var playerLocation = fgLightCyan(fmt"{player.location.name}")
    stdout.write(fmt"{playerName} :: {playerCredits} :: {playerShip} :: {playerLocation} > ")