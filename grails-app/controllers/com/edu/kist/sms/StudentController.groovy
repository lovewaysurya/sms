package com.edu.kist.sms

import grails.plugin.springsecurity.annotation.Secured

@Secured (['ROLE_ADMIN'])
class StudentController {
    def index() {

    }
    def create(){}

    def save(){
        def student=new Student(studentID: params?.studentID,title: params?.title,firstName: params?.firstName,middleName: params?.middleName,lastName: params?.lastName,gender: params?.gender,email: params?.email,mobileNO: params?.mobileNo,dateOfBirth: params?.dateOfBirth,nationality: params?.nationality,admissionDate: params?.admissionDate,studentStatus: params?.studentStatus)
            student.save(failOnError: true)
           redirect(action: 'index')
    }

//    def show(Student studentInstance){
//        respond studentInstance

//    }

}

