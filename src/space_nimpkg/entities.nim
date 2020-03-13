type
    Character* = object
        name*, location*: string
        credits*: int
        ship*: string

type
    Structure* = object
        kind*: string
        power*: int
        


type 
    Item* = object
        name*: string
        desc*: string
        worth*: int

type 
    Ship* = object
        name*: string
        power*: int
        cargo*: seq[Item]
        state*: string
        worth*: int