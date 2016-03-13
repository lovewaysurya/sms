package com.edu.kist.sms

import org.grails.databinding.BindingFormat

class OnlineAdmission {
Title title=Title.Mr
    String firstName
    String middleName
    String lastName
    Gender gender=Gender.Male
    @BindingFormat('dd/MM/yyyy')
    Date dateOfBirth
    String email
    String religion
    Nationality nationality=Nationality.Nepali
    String mobileNo
    String photo
    String address
    String country
    String state
    String city
    String houseNo
    String phoneNO
    String course
    String batch
    String documentDetails
    String documentCategory
    String chooseFile
    Boolean action
    static constraints = {
        firstName(matches:"[a-zA-Z]+")
        middleName(nullable: true,blank:true)
        lastName(matches: "[a-zA-Z]+")
        email(email:true)

    }
    enum Title{
        Mr,Mrs,Ms
    }
    enum Nationality{
        Nepali,Indian
    }

    enum Gender {
        Male,Female
    }
}
