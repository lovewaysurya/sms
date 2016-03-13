package com.edu.kist.sms

import org.grails.databinding.BindingFormat

class ParentDetails {
    String firstName
    String lastName
    String relationship
    @BindingFormat('dd/MM/yyyy')
    Date dateOfBirth
    String education
    String occupation
    String income
    String   email
    String addressLine1
   String addressLine2
    String city
    String State
    String Country
    String phone1
    String phone2
    String mobilePhoneNol


    static constraints = {
        firstName(matches: "[a-aA-Z]+")
        lastName(matches: "[a-zA-Z]+")
        email(email: true)
    }


}
