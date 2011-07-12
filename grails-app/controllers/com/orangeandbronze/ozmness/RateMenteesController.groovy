package com.orangeandbronze.ozmness

import org.springframework.web.servlet.ModelAndView

class RateMenteesController {

    def springSecurityService

    static defaultAction = "showMentees"

    def showMentees = {
        Employee rater = Employee.get(springSecurityService.currentUser.id)
        new ModelAndView("/rateMentees/mentees", [rater: rater])
    }

    def rate = {
        Employee rated = Employee.get(params.id)
        new ModelAndView("/rateMentees/rate", [rated: rated])
    }
}
