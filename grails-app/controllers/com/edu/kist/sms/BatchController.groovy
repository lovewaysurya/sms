package com.edu.kist.sms

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional


@Secured(["ROLE_ADMIN"])

class BatchController {

    def index(Integer max ) {
        params.max = Math.min(max ?: 10, 100)
        respond Batch.list(params),model: [batchInstanceCount: Batch.count() ]


    }
    def create() {
        respond new Batch(params)
    }
    @Transactional

    def save(Batch batchInstance) {
        print ">>>>>>>>>>>>>"
        print params
       // def batch = new Batch(batchCours:params?.batchCourse, batchName:params?.batchAlias,startDate:params?.startDate,endDate:params?.endDate, academicYear:params?.academicYear)
        batchInstance.save(failOnError: true)
        redirect(action: 'index')
    }

}
