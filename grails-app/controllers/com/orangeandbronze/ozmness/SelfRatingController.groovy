package com.orangeandbronze.ozmness

class SelfRatingController {

    static defaultAction = "showRatings"

    def springSecurityService

    /**
     * Displays your own rating (self-rated).
     * Available tasks:
     * -add a new rating
     * -update existing ratings
     */
    def showRatings = {
        Employee you = Employee.get(springSecurityService.currentUser.id)
        [ratings: Rating.findAllByRatedAndCreator(you, you)]
    }

    /**
     * Create a new rating.
     */
    def newRating = {
        [rating: new Rating(), technologies: Technology.findAll()]
    }

    /**
     * Update an existing rating
     * Need id for this.
     * Updates are limited to the value.
     */
    def updateRating = {
        [rating: Rating.get(params.id)]
    }

    /**
     * Checks if the rating already exists.
     * Duplication is checked by technology.
     * If it exists, do an update, otherwise
     * create a new one.
     */
    def saveRating = {
        Employee you = Employee.get(springSecurityService.currentUser.id)
        Technology newTechnology = Technology.get(params['technology.id'])
        Rating rating = Rating.get(params.id)  ?: new Rating(params)

        List personalRatings = Rating.findAllByCreatorAndRated(you,you)

        personalRatings.each { Rating r ->
            if(r.technology.equals(newTechnology)) {
                rating = r
            }
        }

        rating.rated = you
        rating.creator = you
        rating.properties = params
        rating.save()

        redirect(action: "showRatings")
    }
}
