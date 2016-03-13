package com.edu.kist.sms

import grails.plugin.springsecurity.annotation.Secured

@Secured (['ROLE_ADMIN'])
class OnlineAdmissionController {

    def index() {}
    def create(){}
    def save(){
        print ">>>>>>>>>>>>>>>>>>>>"
        print params.stuDocsPath[1]
        print params


        def f = request.getFile(params.stuDocsPath[1])

        //validate file

        //now transfer file
        def webrootDir = servletContext.getRealPath("/") //app directory
                File fileDest = new File(webrootDir,"images/uploaded_images")
                f.transferTo(fileDest)
        print "success"

        def student=new Student(Title:params?.title,firstName: params?.firstName,lastName: params?.lastName,
                gender: params?.gender,dateOfBirth: params?.dateOfBirth,email:params?.email,
                religion:params?.religion,nationality: params?.nationality,mobileNO: params?.mobileNo,
                photo:params?.photo,address:params?.address,country:params?.country,state:params?.state,
                city:params?.city,houseNo:params?.houseNo,phoneNo:params?.phoneNo,course:params?.course,
                batch:params?.batch,documentDetails:params?.decumentDetails,documentCategory?.documentCategory,
        chooseFile:params?.chooseFile,action:params?.action)

        student.save(flush: true)
        redirect(action: 'index')
    }
}
