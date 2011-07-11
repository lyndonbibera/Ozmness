package com.orangeandbronze.ozmness

class Project {
    String name
    Date dateStarted
    Date dateFinished
    Employee lead

    static belongsTo = [lead: Employee]

    static hasMany = [
        technologies:Technology,
        developers: Employee
    ]

    static mapping = {
        technologies(joinTable: [
            name: 'project_technologies',
            key: 'project_id',
            column: 'technology_id'
        ])
    }

    static constraints = {
        name(validator: { val, obj ->
            val.length() >= 1 ? true : 'error.project.short'
        })
    }

    String toString() {
        "$name"
    }

}
