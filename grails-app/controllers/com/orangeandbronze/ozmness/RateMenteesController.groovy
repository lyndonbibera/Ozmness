package com.orangeandbronze.ozmness

/**
 * Controller charged with the task to rate a mentor's mentees.
 */
//TODO: error handling
class RateMenteesController {

    def springSecurityService

    static defaultAction = "showMentees"

    /**
     *  Shows the mentees of the current user.
     */
    def showMentees = {
        [rater: Employee.get(springSecurityService.currentUser.id)]
    }

    /**
     *  Shows the ratings of the selected employee.
     *  The current user can rate only on his mentees.
     */
    def rate = {
        [rated: Employee.get(params.id), rater: Employee.get(springSecurityService.currentUser.id)]
    }

    /**
     *  Displays the form to update an employee's rating
     */
    def updateRating = {
        [rating: Rating.get(params.id)]
    }

    /**
     *  Update the edited rating.
     */
    def submitUpdate = {
        Rating r = Rating.get(params.id)
        r.properties = params
        r.save()
        redirect(action: 'showMentees')
    }

    /**
     *  Add a new rating
     */
    def createRating = {
        Rating rating = new Rating()
        rating.rated = Employee.get(params.id)
        [rating: rating, technologies: Technology.findAll()]
    }

    /**
     *  Persists the new rating.
     */
    def submitCreate = {
        Rating r = new Rating(params)
        r.creator = Employee.get(springSecurityService.currentUser.id)
        r.save()
        redirect(action: 'showMentees')
    }
}
