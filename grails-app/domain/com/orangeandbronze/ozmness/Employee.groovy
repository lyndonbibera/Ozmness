package com.orangeandbronze.ozmness

class Employee extends User {
    String firstName
    String lastName
    Position position
    Employee mentor

    static hasMany = [
        projects: Project,
        projectLeads: Project
    ]

    static belongsTo = [projects: Project]

    static mappedBy = [projectLeads:'lead']

    static constraints = {
        firstName(blank: false)
        lastName(blank: false)
        position(blank: false)
        mentor(validator: { val, obj ->
            val == null || val.id !=  obj.id ? true : "employee.error.circular"
        })
    }

    String toString() {
        "$firstName $lastName [$position]"
    }

}