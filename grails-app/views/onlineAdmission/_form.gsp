<%@ page import="com.edu.kist.sms.OnlineAdmission" %>
<asset:javascript src="application.js"/>


<div class="container">
    <g:form controller="onlineAdmission" action="save">


        <div class="form-group">
        <label for="title" class="control-label">Title</label>
        <input type="text"name="title"id="title"class="form-control"placeholder="Enter title"/>
        </div>

        <div class="form-group">
            <label for="firstName" class="control-label">Enter First Name</label>
            <input type="text"name="firstName" id="firstName"class="form-control"placeholder="Enter First Name"/>
        </div>

        <div class="form-group">
            <label for="middleName" class="control-label">Middle Name</label>
            <input type="text" name="middleName" id="middleName"class="form-control"placeholder="Enter Middle Name"/>

        </div>

        <div class="form-group">
            <label for="lastName"class="control-label">Last Name</label>
            <input type="text"name="lastName"id="lastName"class="form-control"placeholder="Enter Last Name"/>
        </div>

        <div class="form-group">
            <label for="Gender" class="control-label">Gender</label>
            <select name="gender"id="gender" required="required" class="form-control">
                <option name="gender"value="${com.edu.kist.sms.OnlineAdmission.Gender.Male}">${com.edu.kist.sms.OnlineAdmission.Gender.Male}</option>
                <option name="gender"value="${com.edu.kist.sms.OnlineAdmission.Gender.Female}">${com.edu.kist.sms.OnlineAdmission.Gender.Female}</option>
            </select>
</div>

<div class="form-group">
    <label for="dateOfBirth" class="control-label">Date Of Birth</label>
    <g:datePicker name="dateOfBirth" class="form-control" id="dateOfBirth"precision="day"value="${onlineAdmissionInstance?.dateOfBirth}"default="none"noSelection="['':'']"/>
</div>

<div class="form-group">
    <label for="email"class="control-label">Email</label>
    <input type="email"id="email"name="email"class="form-control"placeholder="Enter Email"/>
</div>

<div class="form-group">
    <label form="religion"class="control-label">Religion</label>
    <input type="text"id="religion"name="religion"class="form-control" placeholder="Enter your religion"/>
</div>

        <div class="form-group">
            <label form="nationality" class="control-label">Nationality</label>
            <input type="text" id="nationality"name="nationality"class="form-control" placeholder="Enter your Nationality"/>
            </div>

        <div class="form-group">
            <label form="mobileNo" class="control-label">Mobile No</label>
            <input type="text" id="mobileNo"name="mobileNo"class="form-control" placeholder="Enter your Mobile No"/>
        </div>


        <div class="form-group">
            <label form="photo" class="control-label">Photo</label>
            <input type="text" id="photo"name="photo"class="form-control" placeholder="Enter your Mobile No"/>
        </div>

        <div class="form-group">
            <label form="address" class="control-label">Address</label>
            <input type="text" id="address"name="address"class="form-control"placeholder="Enter your Mobile No"/>
        </div>

        <div class="form-group">
            <label form="country" class="control-label">Country</label>
            <input type="text" id="country"name="country"class="form-control"placeholder="Enter your Country Name"/>
        </div>
<div class="form-group">
    <label form="state"class="control-label">State</label>
    <input type="text"id="state"name="state"class="form-control"placeholder="Enter Your Address"/>
</div>

        <div class="form-group">
            <label form="city"class="control-label">City</label>
            <input type="text"id="city"name="city"class="form-control"placeholder="Enter Your City"/>
            </div>

        <div class="form-group">
            <label form="houseNo"class="control-label">houseNo</label>
            <input type="text"id="houseNo" name="houseNo"class="form-control"placeholder="Enter Your House No"/>
        </div>

        <div class="form-group">
            <label form="phoneNo"class="control-label">phoneNo</label>
            <input type="text"id="phoneNo"name="phoneNo"class="form-control"placeholder="Enter Your Phone No"/>
        </div>

        <div class="form-group">
            <label form="course"class="control-label">Course</label>
            <input type="text"id="course"name="course"class="form-control"placeholder="Enter Your Course"/>
        </div>
        <div class="form-group">
            <label form="batch"class="control-label">Batch</label>
            <input type="text"id="batch"name="batch"class="form-control"placeholder="Enter Your Batch"/>
        </div>


        <!-- Upload Documents -->
        <h2 class="page-header edusec-page-header-2">
            <i class="fa fa-upload"></i> Upload Documents    </h2>
        <div class="table-responsive">
            <table cellpadding="0" cellspacing="0" id="admit_docs_tbl" class="table">
                <tr class="bg-green">
                    <th style="width: 20%;">Document Details</th>
                    <th style="width: 15%;">Document Category</th>
                    <th style="width: 25%;">Document File</th>
                    <th colspan=2 style="width: 6.6%;">Action</th>
                </tr>
                <tr class="test">
                    <td>
                        <textarea id="stuadmissiondocs-stu_docs_details" class="form-control" name="StuAdmissionDocs[stu_docs_details][]" maxlength="70" style="height: 40px;max-width: 250px;" placeholder="Enter Document Details"></textarea>			</td>
                    <td>
                        <select id="stuadmissiondocs-stu_docs_category_id" class="form-control" name="StuAdmissionDocs[stu_docs_category_id][]" maxlength="70" style="max-width: 250px;">
                            <option value="">---- Select Category ----</option>
                            <option value="1">Migration Certificate</option>
                            <option value="3">Bonafied Certificate</option>
                            <option value="4">Leaving Certificate</option>
                            <option value="5">H.S.C. Marksheet</option>
                            <option value="6">S.L.C. Marksheet</option>
                        </select>			</td>
                    <td>
                        <input type="hidden" name="stuDocsPath" value=""><input type="file" id="stuadmissiondocs-stu_docs_path" name="stuDocsPath">				<div class="fileinput-help-block" style="color:#dd4b39;" id="help-block-file"></div>
                    </td>
                    <td>
                        <a id="recopy-add" class="add glyphicon glyphicon-plus-sign text-success" href="#" rel=".test" style="font-size:24px;"></a>			</td>
                    <td class="remove" style="display:none">
                        <span class="removerow glyphicon glyphicon-minus-sign" style="font-size:24px;color:#D9534F;" title="REMOVE"></span>
                    </td>

                </tr>
            </table>
        </div>

</div>


        <button class="btn btn-default"type="submit">Save</button>

    </g:form>
</div>




