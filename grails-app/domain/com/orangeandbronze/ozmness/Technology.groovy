package com.orangeandbronze.ozmness

class Technology {
    Technology parent
    String name

    static constraints = {
        parent()
        name(blank: false)
    }

    String toString() {
        "$name"
    }

    /**
     * Set the parent of this Technology.
     * Parent should not be found on a lower branch.
     * @param parent
     */
    void setParent(Technology parent) {
        Technology currentParent = parent
        while(currentParent != null) {
            if(this.equals(currentParent)) {
                throw new Exception("Technologies on a lower branch[$parent] cannot be parents of a higher class[$this]")
            }
            currentParent = currentParent.parent
        }
        this.parent = parent
    }
}
