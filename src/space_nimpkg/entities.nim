import tables
type 
    Item* = object
        name*: string
        desc*: string
        worth*: int
        quantity*: int

 
    Ship* = object
        name*: string
        x*: int
        y*: int
        power*: int
        cargo*: Table[string, int]
        state*: string
        worth*: int


    Structure* = object
        name*: string
        solarSystem*: string
        x*: int
        y*: int
        kind*: string
        power*: int
        state*: string
        goods*: Table[string, int]


    Character* = object
        name*: string
        location*: Structure
        state*: string
        credits*: int
        ship*: Ship