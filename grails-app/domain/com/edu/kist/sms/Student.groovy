package com.edu.kist.sms

import org.grails.databinding.BindingFormat

class Student {
String studentID
    String title
    String firstName
    String middleName
    String lastName
    Gender gender=Gender.Male
    long email
    String mobileNo
    @BindingFormat('dd/MM/yyyy')
    Date dateOfBirth
    Nationality nationality=Nationality.Nepali
    @BindingFormat('dd/MM/yyyy')
    Date admissionDate
    StudentStatus studentStatus=StudentStatus.New
    static constraints = {
    }
    enum Gender {
        Male,Female
    }
    enum Nationality {
        Nepali,Indian
    }
    enum StudentStatus{
        New,Running,Passout
    }
}
