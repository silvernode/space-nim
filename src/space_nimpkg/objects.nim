import tables
type
    Player* = object
        name*: string
        credits*: int
        ship*: Ship

    Ship* = object
        name*: string
        attack*: int
        defense*: int
        credits*: int