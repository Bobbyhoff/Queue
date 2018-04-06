package net.heithoff

import grails.converters.JSON

class SignupController {

    static allowedMethods = [register: "POST"]

    def userService

    def register() {

        def errors = []
        if(!params?.username) { errors.add("must provide a username") }
        if(!params?.password) { errors.add("must provide a password") }

        if(errors.size() > 0) {
            render errors as JSON
            return
        }

        userService.createUser(params?.username,params?.password)

        render view: "register"
    }

    def index() { }
}
