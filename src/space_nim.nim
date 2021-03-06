import 
    terminal,
    strformat,
    colorize,
    space_nimpkg/db,
    space_nimpkg/objects

proc clearScreen() =
    eraseScreen()
    setCursorPos(0,0)

proc add_to_cargo(player: var Player, item: var Item) = 
    player.ship.cargo.add(item)

proc show_cargo(player: var Player) = 
    echo ""
    for i in player.ship.cargo:
        echo fmt"{i.name}: {i.desc}"

proc space_prompt*(player: Player, station: Station): string =

    var player_name = player.name.fgLightCyan
    var player_credits = fmt"${player.credits}".fgLightGreen
    var player_ship_name = player.ship.name.fgLightMagenta
    var location_name = station.name.fgLightYellow
    var prompt = (fmt"{player_name} | {player_credits} | {player_ship_name} | {location_name}: ")


    return prompt


proc main_game_loop(player: var Player) =
  var location = genesis 
  var getchAnswer: char
  while true:
    echo location.msg
    stdout.write space_prompt(player, location)
    getchAnswer = getch()

    if getchAnswer == 'm':
      break

    if getchAnswer == 'q':
        quit()

    if getchAnswer == 'l':
      echo player.location

    if getchAnswer == 'a':
        add_to_cargo(player, laser)
    if getchAnswer == 'i':
        show_cargo(player)

    if getchAnswer == 'c':
        clearScreen()
                                
    
proc new_player(): Player =
    var starting_credits = 1000
    var player: Player
    var answer: char

    player.credits = starting_credits
    player.ship = draco

    while true:
      stdout.write("What is your callsign?: ")
    
      player.name = readline(stdin)
      
      echo(fmt"Your name is: {player.name}")
      stdout.write("Is this correct? (y/n): ")

      answer = getch()
      clearScreen()

      case answer:
      of 'y':
        break
      else:
        continue
    return player 

proc new_game() =
    var player: Player = new_player()
    echo fmt"Hi {player.name}"  
    main_game_loop(player)

proc load_game() =
    echo("Open load game menu")

proc options_menu() = 
    echo("open options menu")

proc exit_game() =
    quit(0)

proc gen_menu*(question: string, opts: openArray[string]): char = 
    echo question
    for i, e in opts:
        echo fmt"{i+1}) {e}"
    return getch()



proc main_menu() =
    while true:
        var 
            mainMenuQuestion ="Space Nim\n----------"
            mainMenuResponses =[
            "New Game",
            "Load Game",
            "Options",
            "Exit"]

            input = gen_menu(
                mainMenuQuestion, 
                mainMenuResponses)

        clearScreen()
        case input:

        of '1':
            new_game()

        of '2':
            load_game()

        of '3':
            options_menu()

        of '4':
            exit_game()

        else:
            clearScreen()#

when isMainModule:
    clearScreen()
    main_menu()
