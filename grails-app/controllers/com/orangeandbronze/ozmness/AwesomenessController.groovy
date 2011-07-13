package com.orangeandbronze.ozmness

class AwesomenessController {

    /**
     * Display the list of employees.
     */
    def index = {
        [employees: Employee.findAll()]
    }

    /**
     * Read only.
     * Displays the awesomeness of the Employee:
     * - Project lead
     * - Project he/she collaborated in
     * - Ratings
     */
    def showAwesomeness = {
        [employee: Employee.get(params.id)]
    }
}
