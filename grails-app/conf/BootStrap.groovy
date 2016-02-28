import com.edu.kist.sms.login.Role
import com.edu.kist.sms.login.User
import com.edu.kist.sms.login.UserRole
class BootStrap {

    def init = { servletContext ->


        def adminUser = new User(username: 'admin', password: 'admin')
        def adminRole = new Role(authority: 'ROLE_ADMIN')

        if (!Role.findByAuthority('ROLE_ADMIN')) {
            adminRole.save(flush: true)
        }

        if (!User.findByUsername('admin')) {
            if (adminUser.save(flush: true)) {
                UserRole.create adminUser, adminRole, true
            }
        }

    }
    def destroy = {
    }
}