package com.orangeandbronze.ozmness

class Rating implements Serializable{
    Technology technology
    Integer value = 1
    String comment
    Employee rated
    Employee creator
    Date dateCreated

    static belongsTo = [rated: Employee]

    static constraints = {
        technology(nullable: false)
        value(range: 1..3)
        comment(blank: true)
        rated(nullable: false)
        creator(nullable: false)
    }

    String toString() {
        "$technology[$value]"
    }
}
