type
    Character* = object
        name*: string
        location: string
        credits*: int
        ship*: string
        
type 
    Item* = object
        name*: string
        desc*: string
        worth*: int

type 
    Ship* = object
        name*: string
        location*: string
        power*: int
        cargo*: seq[Item]
        state*: string
        worth*: int

type
    Structure* = object
        name*: string
        kind*: string
        power*: int
        state*: string
        goods*: seq[Item]