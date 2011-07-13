package com.orangeandbronze.ozmness

class MinimumRating implements Serializable{
    Integer value
    Technology technology

    static belongsTo = Position

    static constraints = {
        technology(blank: false)
        value(range: 1..3)
    }

    String toString() {
        "$technology $value"
    }
}
