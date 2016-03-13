package com.edu.kist.sms

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class SubjectController {

    def index(Integer max) {
        params.max=Math.min(max?:10,100)
        respond Subject.list(params), model: [subjectInstanceCount: Subject.count()]

    }
    def create(){}


    def save(){
//        def subject = new Subject(subjectName: params?.subjectName,subjectCode: params?.subjectCode)
           def  subject= new Subject(params)
        subject.save(flush: true)
        redirect(action: 'index')

    }



}
