package com.orangeandbronze.ozmness

class UpdateAccountController {

    static defaultAction = "changeAccount"

    def springSecurityService

    /**
     * Show the change account form.
     */
    def changeAccount = {
        [employee: Employee.get(springSecurityService.currentUser.id), positions: Position.findAll()]
    }

    /**
     * Save the changes.
     */
    def submitChanges = {
        Employee e = Employee.get(params.id)
        e.properties = params
        e.password = springSecurityService.encodePassword(params.password)
        e.save()
        redirect(controller: 'rateMentees')
    }
}
