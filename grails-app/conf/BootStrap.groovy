import com.orangeandbronze.ozmness.*

class BootStrap {
    def springSecurityService

    def init = { servletContext ->
        /*def roles = [:]
		def users = [:]

        *//**
         * Remove me in production code.
         *//*

        //initialize roles
		roles.admin = Role.findByAuthority("ADMIN") ?: new Role(authority: "ADMIN").save();
        Role.findByAuthority("DEV") ?: new Role(authority: "DEV").save();

        //create an admin account if non exists
		users.admin = User.findByUsername('admin') ?:
			new User(
				username: 'admin',
				password: springSecurityService.encodePassword('admin'),
				enabled: true,
				accountExpired:false,
				accountLocked: false,
				passwordExpired: false
			).save();

        //add admin
		UserRole.create( users.admin, roles.admin )

        Position jrDev = new Position()
        jrDev.name = "Jr. Dev"

        Technology java = new Technology()
        java.name = "Java"
        Technology.findByName("Java") ?: java.save()
        MinimumRating mrJava = new MinimumRating()
        mrJava.technology = java
        mrJava.value = 2
        MinimumRating.findByTechnology(java) ?: mrJava.save()
        jrDev.addToMinimumRatings(mrJava)
        Position.findByName("Jr. Dev") ?: jrDev.save()

        Employee e1 = new Employee()
        e1.firstName = "Lyndon"
        e1.lastName = "Bibera"
        e1.username = "user1"
        e1.password = springSecurityService.encodePassword("user1")
        e1.position = jrDev
        Employee.findByUsername("user1") ?: e1.save()

        //add juniors
        Employee e2 = new Employee()
        e1.addToMentees(e2)
        e2.firstName = "Weak"
        e2.lastName = "Not Awesome"
        e2.username = "user2"
        e2.password = springSecurityService.encodePassword("user2")
        e2.position = jrDev
        Employee.findByUsername("user2") ?: e2.save()

        //root technology
        Technology t1 = new Technology()
        t1.name = "NO PARENT"
        Technology.findByName("NO PARENT") ?: t1.save()

        UserRole u1 = new UserRole()
        u1.role = Role.findByAuthority("DEV")
        u1.user = e1
        u1.save()

        UserRole u2 = new UserRole()
        u2.role = Role.findByAuthority("DEV")
        u2.user = e2
        u2.save()*/
    }

    def destroy = {

    }
}
