package com.edu.kist.sms

import org.grails.databinding.BindingFormat

class Batch {
    String batchCourse
    String batchName
    String batchAlias
    @BindingFormat('dd/MM/yyyy')
    Date startDate
    Date endDate
    Date academicYear

    static constraints = {


    }
}