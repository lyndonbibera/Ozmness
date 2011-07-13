package com.orangeandbronze.ozmness

import grails.test.*

class ProjectTests extends GrailsUnitTestCase {

    void testValidProjectName() {
        mockDomain(Project)
        Project p2 = new Project()
        p2.name = "Project Ozmness"
        p2.dateStarted = new Date()
        p2.dateFinished = new Date()

        assert p2.validate(['name'])
    }

    void testInvalidProjectName() {
        mockDomain(Project)
        Project p1 = new Project()

        assert !p1.validate(['name'])
    }

}
