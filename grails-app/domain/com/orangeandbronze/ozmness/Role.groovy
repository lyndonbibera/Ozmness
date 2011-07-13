package com.orangeandbronze.ozmness

class Role implements Serializable{

	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}

    String toString() {
        "$authority"
    }
}
