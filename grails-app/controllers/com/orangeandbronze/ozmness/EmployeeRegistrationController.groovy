package com.orangeandbronze.ozmness

class EmployeeRegistrationController {

    def springSecurityService

    static defaultAction = "registration"

    def registration = {
        Employee employee = new Employee()
        [employee: employee]
    }

    def submitRegistration = {

    }
}
