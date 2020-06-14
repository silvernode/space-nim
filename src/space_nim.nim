

#import space_nimpkg/
import 
    terminal,
    strformat

proc new_game() =
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