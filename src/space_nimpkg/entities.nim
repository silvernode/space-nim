type
    Character* = object
        name*, location*: string
        credits*: int
        ship*: string

type
    Enemy* = object
        name*: string

type 
    Ship* = object
        name*: string
        hp*: int
        cargo*: seq[string]
        state*: string