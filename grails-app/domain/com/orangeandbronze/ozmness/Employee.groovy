package com.orangeandbronze.ozmness

class Employee extends User implements Serializable{
    String firstName
    String lastName
    Position position
    Employee mentor

    static hasMany = [
        projects: Project,
        projectLeads: Project,
        mentees: Employee,
        ratings: Rating
    ]

    static belongsTo = [projects: Project]

    static mappedBy = [projectLeads:'lead', ratings: 'rated']

    static constraints = {
        firstName(blank: false)
        lastName(blank: false)
        position(blank: false)
        mentor(validator: { val, obj ->
            /*val ? true :  val !=  obj ? true : "error.employee.circular"  <----TODO: figure this out jackass*/
            val == null || val !=  obj ? true : "error.employee.circular"
        })
    }

    String toString() {
        "$firstName $lastName"
    }

}