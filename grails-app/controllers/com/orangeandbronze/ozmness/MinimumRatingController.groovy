package com.orangeandbronze.ozmness

class MinimumRatingController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [minimumRatingInstanceList: MinimumRating.list(params), minimumRatingInstanceTotal: MinimumRating.count()]
    }

    def create = {
        def minimumRatingInstance = new MinimumRating()
        minimumRatingInstance.properties = params
        return [minimumRatingInstance: minimumRatingInstance]
    }

    def save = {
        def minimumRatingInstance = new MinimumRating(params)
        if (minimumRatingInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'minimumRating.label', default: 'MinimumRating'), minimumRatingInstance.id])}"
            redirect(action: "show", id: minimumRatingInstance.id)
        }
        else {
            render(view: "create", model: [minimumRatingInstance: minimumRatingInstance])
        }
    }

    def show = {
        def minimumRatingInstance = MinimumRating.get(params.id)
        if (!minimumRatingInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'minimumRating.label', default: 'MinimumRating'), params.id])}"
            redirect(action: "list")
        }
        else {
            [minimumRatingInstance: minimumRatingInstance]
        }
    }

    def edit = {
        def minimumRatingInstance = MinimumRating.get(params.id)
        if (!minimumRatingInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'minimumRating.label', default: 'MinimumRating'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [minimumRatingInstance: minimumRatingInstance]
        }
    }

    def update = {
        def minimumRatingInstance = MinimumRating.get(params.id)
        if (minimumRatingInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (minimumRatingInstance.version > version) {
                    
                    minimumRatingInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'minimumRating.label', default: 'MinimumRating')] as Object[], "Another user has updated this MinimumRating while you were editing")
                    render(view: "edit", model: [minimumRatingInstance: minimumRatingInstance])
                    return
                }
            }
            minimumRatingInstance.properties = params
            if (!minimumRatingInstance.hasErrors() && minimumRatingInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'minimumRating.label', default: 'MinimumRating'), minimumRatingInstance.id])}"
                redirect(action: "show", id: minimumRatingInstance.id)
            }
            else {
                render(view: "edit", model: [minimumRatingInstance: minimumRatingInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'minimumRating.label', default: 'MinimumRating'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def minimumRatingInstance = MinimumRating.get(params.id)
        if (minimumRatingInstance) {
            try {
                minimumRatingInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'minimumRating.label', default: 'MinimumRating'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'minimumRating.label', default: 'MinimumRating'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'minimumRating.label', default: 'MinimumRating'), params.id])}"
            redirect(action: "list")
        }
    }
}
