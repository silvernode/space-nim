
import 
    strformat,
    objects



var 
    
    ship1 = Ship(
        name: "Tiger",
        attack: 10,
        defense: 5
    )

    player = Player(
        name: "Mike",
        credits: 100,
        ship: ship1
    )

proc space_prompt*(player: Player): string =

    var prompt = (fmt"{player.name} {player.credits}: ")


    return prompt