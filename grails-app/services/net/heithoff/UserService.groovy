package net.heithoff

import grails.transaction.Transactional

@Transactional
class UserService {

    def createUser(String username, String password) {
        def user = new User(
                username: username,
                password: password,
                passwordExpired: false,
                enabled: true,
                accountLocked: false
        ).save()
        def owner = new Role(
                authority: "ROLE_" + user.id + "_OWNER"
        ).save()

        UserRole.create(user, owner)
        return user
    }
}
