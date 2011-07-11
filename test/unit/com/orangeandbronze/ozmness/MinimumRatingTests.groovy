package com.orangeandbronze.ozmness

import grails.test.*

class MinimumRatingTests extends GrailsUnitTestCase {
    MinimumRating r1

    protected void setUp() {
        super.setUp()
        mockDomain(MinimumRating)
        r1 = new MinimumRating()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testValueOutOfRange() {
        r1.value = 100
        assert !r1.validate()
    }

    void testCorrectValue() {
        r1.technology = new Technology()
        r1.value = 1
        assert r1.validate()
        r1.value = 2
        assert r1.validate()
        r1.value = 3
        assert  r1.validate()
        r1.value = 4
        assert !r1.validate()
        r1.value = 0
        assert !r1.validate()
    }
}
