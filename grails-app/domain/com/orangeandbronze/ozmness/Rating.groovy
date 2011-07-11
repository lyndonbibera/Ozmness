package com.orangeandbronze.ozmness

class Rating {
    Technology technology
    Integer value
    String comment
    Employee rated
    Employee creator
    Date dateCreated

    static constraints = {
        technology(nullable: false)
        value(range: 1..3)
        comment(blank: true)
        rated(nullable: false)
        creator(nullable: false)
    }

    String toString() {
        "$technology[$value] by $creator"
    }
}
