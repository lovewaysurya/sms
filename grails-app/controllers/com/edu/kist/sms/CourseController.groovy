package com.edu.kist.sms

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class CourseController {

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Course.list(params), model: [courseInstanceCount: Course.count()]
    }

    def create(){

    }
    def show(Course courseInstance){
        respond courseInstance
        
    }
    def save(){
        def course = new Course(CourseName:params?.CourseName,CourseAlias: params?.CourseAlias,CourseCode: params?.CourseCode)
        course.save(flush:true)
        redirect(action: 'index')

    }
}
