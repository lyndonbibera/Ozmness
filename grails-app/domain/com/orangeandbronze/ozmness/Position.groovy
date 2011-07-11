package com.orangeandbronze.ozmness

class Position {
    String name

    static hasMany = [
        minimumRatings:MinimumRating
    ]

    static mapping = {
        table('positions')
        minimumRatings(joinTable: [
            name: 'position_ratings',
            key: 'position_id',
            column: 'minimum_rating_id'
        ])
    }

    static constraints = {
        name(blank: false)
    }

    String toString() {
        "$name"
    }
}
