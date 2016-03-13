package com.edu.kist.sms

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class ParentDetailsController {

    def index() {}
    def create(){}
    def save(ParentDetails ParentDetailsInstance){
        //def ParentDetails=new ParentDetails(firstName: params?.firstName,lastName: params?.lastName,relationship: params?.relationship,
        //dateOfBirth: params?.dateOfBirth,education: params?.education,)
        ParentDetailsInstance.save(failOnError: true)
        redirect(action: 'index')
    }
}
