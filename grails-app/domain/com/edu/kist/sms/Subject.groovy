package com.edu.kist.sms

class Subject {
    String subjectName
    String subjectCode

    static constraints = {
        subjectCode blank: false ,nullable: false
        subjectName blank: false , nullable: false
    }
}
