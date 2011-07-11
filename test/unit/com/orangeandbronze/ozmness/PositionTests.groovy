package com.orangeandbronze.ozmness

import grails.test.*

class PositionTests extends GrailsUnitTestCase {
    Position p

    protected void setUp() {
        super.setUp()
        mockDomain(Position)
        p = new Position()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testBlankName() {
        assert !p.validate()
    }

    void testValidName() {
        p.name = "Software Engineer"
        assert p.validate()
    }
}
