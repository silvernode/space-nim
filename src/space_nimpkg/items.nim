import entities


proc book*(): Item =
    var book = Item( name: "Ship Manual",
                    desc: "The manual for this ship (can be sold)",
                    worth: 50)

    return book