import tables
type 
    Item* = object
        name*: string
        desc*: string
        worth*: int
        quantity*: int

type 
    Ship* = object
        name*: string
        location*: string
        power*: int
        cargo*: Table[string, int]
        state*: string
        worth*: int

type
    Structure* = object
        name*: string
        kind*: string
        power*: int
        state*: string
        goods*: Table[string, int]

type
    Character* = object
        name*: string
        location*: Structure
        state*: string
        credits*: int
        ship*: Ship