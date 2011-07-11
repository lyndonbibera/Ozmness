package com.orangeandbronze.ozmness

import grails.test.*

class EmployeeTests extends GrailsUnitTestCase {

    protected void setUp() {
        super.setUp()
        mockDomain(Employee)
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testTheSameMentor() {
        Employee e1 = new Employee()
        e1.mentor = e1
        assert !e1.validate(["mentor"])
    }

    void testCorrectMentor() {
        Employee e1 = new Employee()
        Employee e2 = new Employee()
        e1.mentor = e2
        assert e1.validate(["mentor"])
    }
}
