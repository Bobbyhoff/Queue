package net.heithoff

import grails.transaction.Transactional

@Transactional
class QueueService {

    def createQueue(User user) {
        def role = new Role(
                authority: user.id + "_QUEUE_MANAGER"
        ).save()

        def quename = "q1"
        def queue = new Queue(
                name: quename,
                owner: role
        ).save()
    }
}
