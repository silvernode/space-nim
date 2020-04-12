import entities
import strformat
import colorize
import tables
import sequtils

proc ShowInventory* (player: Character) =
  echo(fmt"Inventory for {player.name}:")
  for k, v in pairs(player.ship.cargo):
    echo(fmt"{k}: {v}")

proc statusPrompt*(player: Character) =
  var playerName = fgLightGreen(fmt"{player.name}")
  var playerCredits = fgLightYellow(fmt"{player.credits}CP")
  var playerShip = fgLightMagenta(fmt"{player.ship.name}")
  var playerLocation = fgLightCyan(fmt"{player.location}")
  stdout.write(fmt"{playerName} :: {playerCredits} :: {playerShip} :: {playerLocation} > ")


proc newGrid*(height: int, width:int): seq =
  var grid = newSeqWith(height, newSeq[int](width))
  for i, _ in grid:
    for x, _ in grid[i]:
      grid[i][x] = x+1
  return grid

proc showGrid*(grid: seq)=
  for i, _ in grid:
    for x, y in grid[i]:
      stdout.write(y)
    stdout.write("\n")
