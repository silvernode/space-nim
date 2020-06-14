

#import space_nimpkg/
import terminal

proc new_game() =
    echo("A new game has started")

proc load_game() =
    echo("Open load game menu")

proc options_menu() = 
    echo("open options menu")

proc exit_game() =
    quit(0)

proc main_menu() =
    
    while true:
        echo("""
        Space Nim
        ----------

        1) New Game
        2) Load Game
        3) Options
        4) Exit

        """)

        var input = getch()
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
            eraseScreen()

when isMainModule:
  
    main_menu()