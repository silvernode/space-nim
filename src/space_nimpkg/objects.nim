type

    Item* = object
        name*: string
        desc*: string

    Location* = object
        x*, y*: int

    Player* = object
        name*: string
        credits*: int
        location*: Location
        ship*: Ship

    Ship* = object
        name*: string
        attack*: int
        defense*: int
        cargo*: seq[Item]

    Station* = object
        name*: string
        msg*: string
        location*: Location

    
        