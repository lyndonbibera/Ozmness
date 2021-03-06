package com.orangeandbronze.ozmness

class User implements Serializable{

	String username
	String password
	boolean enabled  = true
	boolean accountExpired = false
	boolean accountLocked = false
	boolean passwordExpired = false

	static constraints = {
		username(blank: false, unique: true)
		password(blank: false)
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

    String toString() {
        "$username"
    }
}
