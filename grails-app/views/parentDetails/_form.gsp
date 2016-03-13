<%@ page import="com.edu.kist.sms.ParentDetails" %>


<div class="container">
<g:form controller="onlineAdmission" enctype="multipart/form-data" action="save">


    <div class="form-group">
        <label for="title" class="control-label">Title</label>
        <input type="text"name="title"id="title"class="form-control"placeholder="Enter title"/>
    </div>

    <div class="form-group">
        <label for="firstName" class="control-label">Enter First Name</label>
        <input type="text"name="firstName" id="firstName"class="form-control"placeholder="Enter First Name"/>
    </div>


    <div class="form-group">
        <label for="lastName"class="control-label">Last Name</label>
        <input type="text"name="lastName"id="lastName"class="form-control"placeholder="Enter Last Name"/>
    </div>


    <div class="form-group">
        <label for="relationship"class="control-label">Relationship</label>
        <input type="text"name="relationship"id="relationship"class="form-control"placeholder="Enter Relationship"/>

    </div>

    <div class="form-group">
        <label for="dateOfBirth" class="control-label">Date Of Birth</label>
        <g:datePicker name="dateOfBirth" class="form-control" id="dateOfBirth"precision="day"value="${onlineAdmissionInstance?.dateOfBirth}"default="none"noSelection="['':'']"/>
    </div>


    <div class="form-group">
        <label form="education"class="control-label">education</label>
        <input type="text"id="education"name="education"class="form-control" placeholder="Enter your Education"/>
    </div>


    <div class="form-group">
        <label form="occupation" class="control-label">occupation</label>
        <input type="text" id="occupation"name="occupation"class="form-control" placeholder="Enter your occupation"/>
    </div>

    <div class="form-group">
        <label form="income" class="control-label">occupation</label>
        <input type="text" id="income"name="income"class="form-control" placeholder="Enter your income"/>
    </div>

    <div class="form-group">
        <label for="email"class="control-label">Email</label>
        <input type="email"id="email"name="email"class="form-control" placeholder="Enter Email"/>
    </div>


    <div class="form-group">
        <label form="addressLine1" class="control-label">Address Line1</label>
        <input type="text" id="addressLine1"name="addressLine1"class="form-control"placeholder="Enter your Address 1"/>
    </div>

    <div class="form-group">
        <label form="addressLine2"class="control-label">Address Line 2</label>
        <input type="text"id="addressLine2"name="addressLine2"class="form-control"placeholder="Enter Your addressLine2"/>
    </div>


    <div class="form-group">
        <label form="city"class="control-label">City</label>
        <input type="text"id="city"name="city"class="form-control"placeholder="Enter Your City"/>
    </div>

    <div class="form-group">
        <label form="zone"class="control-label">Zone</label>
        <input type="text"id="zone"name="zone"class="form-control"placeholder="Enter Your zone"/>
    </div>

    <div class="form-group">
        <label form="country" class="control-label">Country</label>
        <input type="text" id="country"name="country"class="form-control"placeholder="Enter your Country Name"/>
    </div>


    <div class="form-group">
        <label form="mobileNo" class="control-label">Mobile No</label>
        <input type="text" id="mobileNo"name="mobileNo"class="form-control" placeholder="Enter your Mobile No"/>
    </div>






    <div class="form-group">
        <label form="phoneNo"class="control-label">phoneNo</label>
        <input type="text"id="phoneNo"name="phoneNo"class="form-control"placeholder="Enter Your Phone No"/>
    </div>


    <button class="btn btn-default"type="submit">Save</button>

</g:form>
</div>
