import com.orangeandbronze.ozmness.*

class BootStrap {
    def springSecurityService

    def init = { servletContext ->
        def roles = [:]
		def users = [:]

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

        //root technology
        Technology t1 = new Technology()
        t1.name = "NO PARENT"
        Technology.findByName("NO PARENT") ?: t1.save()

    }

    def destroy = {

    }
}
