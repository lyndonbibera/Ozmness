package com.orangeandbronze.ozmness

import grails.test.*

class EmployeeTests extends GrailsUnitTestCase {

    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testTheSameMentor() {
        mockDomain(User)
        mockDomain(Employee)
        Employee e1 = new Employee()
        e1.mentor = e1
        assert !e1.validate(["mentor"])
    }

    void testCorrectMentor() {
        mockDomain(User)
        mockDomain(Employee)
        mockDomain(Position)
        mockForConstraintsTests(Employee)
        Position p1 = new Position()
        p1.name = "Dev"
        Employee e1 = new Employee()
        Employee e2 = new Employee()
        e1.position = p1
        e1.firstName = "Lyndon"
        e1.lastName = "Awesome"
        e1.mentor = e2

        println "employee.validate: ${e1.validate()}"
        println "hasErrors: ${e1.errors}"

        assert e1.validate(["mentor"])
    }
}
