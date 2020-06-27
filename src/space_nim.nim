

import space_nimpkg/objects
import 
    terminal,
    strformat

proc space_prompt*(player: Player): string =

    var prompt = (fmt"{player.name} | {player.credits} | {player.ship}: ")


    return prompt

proc new_player(): Player =
    var starting_credits = 1000
    var player: Player
    var answer: char
    while true:
      echo("What is your callsign? ")
    
      player.name = readline(stdin)
      player.credits = starting_credits
      echo fmt"Your name is: {player.name}"
      echo "Is this correct? (y/n)"
      answer = getch()
      eraseScreen()
      if answer == 'y':
        break
      else:
        continue
    return player

proc new_game() =
    var player: Player = new_player()
    echo fmt"Hi {player.name} you have {player.credits} credits"  
    echo("A new game has started")

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

        eraseScreen()
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
            eraseScreen()#

when isMainModule:
    eraseScreen()
    main_menu()
