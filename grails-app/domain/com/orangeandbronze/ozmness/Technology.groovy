package com.orangeandbronze.ozmness

class Technology implements Serializable{
    Technology parent
    String name

    static constraints = {
        parent(validator: {  val, obj ->
            Technology p = val as Technology
                while(p != null) {
                     if(obj.equals(p)) {
                         return "error.technology.parent.invalid"
                     }
                     p = p.parent
                }
            true
        })
        name(blank: false)
    }

    String toString() {
        "$name"
    }

}
