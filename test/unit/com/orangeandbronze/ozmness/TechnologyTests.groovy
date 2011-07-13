package com.orangeandbronze.ozmness

import grails.test.*

class TechnologyTests extends GrailsUnitTestCase {
    Technology main
    Technology branch
    Technology branchOfBranch

    protected void setUp() {
        super.setUp()
        mockDomain(Technology)
        main = new Technology()
        branch = new Technology()
        branchOfBranch = new Technology()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testInvalidTechnologyTree() {
        branch.parent = main
        branchOfBranch.parent = branch
        main.parent = branch
        assert !main.validate()
    }

    void testCorrectTechnologyTree() {
        branchOfBranch.parent = branch
        branch.parent = main

        assert main.validate(['parent'])
    }
}
