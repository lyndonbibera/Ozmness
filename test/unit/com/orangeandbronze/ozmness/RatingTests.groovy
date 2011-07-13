package com.orangeandbronze.ozmness

import grails.test.*

class RatingTests extends GrailsUnitTestCase {
    Rating r1

    protected void setUp() {
        super.setUp()
        mockDomain(Rating)
        r1 = new Rating()
    }

    void testRatingWithInvalidValue() {
        r1.value = 4

        assert !r1.validate(["value"])
        r1.value = 0

        assert  !r1.validate(["value"])
    }

    void testRatingWithCorrectValue() {
        r1.value = 1

        assert r1.validate(["value"])
        r1.value = 2

        assert r1.validate(["value"])
        r1.value = 3

        assert r1.validate(["value"])
    }
}
