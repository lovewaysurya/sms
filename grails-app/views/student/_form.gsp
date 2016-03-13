<%@ page import="com.edu.kist.sms.Student" %>

<div class="container">
	<g:form controller="student" action="save">
		<div class="form-group">
			<label for="studentID" class="control-label" >Student ID</label>
			<input type="text" id="studentID" name="studentID" class="form-control" placeholder="enter student Id"/>
		</div>
		<div class="form-group">
			<label for="title" class="control-label" >Title</label>
			<input type="text" id="title" name="title" class="form-control" placeholder="enter Title"/>
		</div>

		<div class="form-group">
			<label for="firstName" class="control-label" >First Name</label>
			<input type="text" id="firstName" name="firstName" class="form-control" placeholder="enter First Name"/>
		</div>

		<div class="form-group">
			<label for="middleName" class="control-label" >Middle Name</label>
			<input type="text" id="middleName" name="middleName" class="form-control" placeholder="Enter Middle Name"/>
		</div>
		<div class="form-group">
			<label for="lastName" class="control-label">Last Name</label>
			<input type="text"id="lastName"name="lastName"class="form-control"placeholder="Enter Last Name"/>

		</div>
		<div class="form-group">
			<label for="Gender" class="control-label">Gender</label>
			<select name="gender" id="Gender" required="">
				<option name="gender" value="${Student.Gender.Male}">${Student.Gender.Male}</option>
				<option name="gender" value="${Student.Gender.Female}">${Student.Gender.Female}</option>
			</select>
		</div>

		<div class="form-group">
			<label for="email"class="control-label">Email</label>
			<input type="email"id="email"name="email"class="form-control"placeholder="Enter Email"/>
		</div>
		<div class="form-group">
			<label for="mobileNo" class="control-label">Mobile No</label>
			<input type="text"id="mobileNo"name="mobileNo"class="form-control"placeholder="Enter Mobile No"/>
		</div>
		<div class="form-group">
			<label for="dateOfBirth"class="control-label">Date Of Birth</label>
			<g:datePicker name="dateOfBirth" class="form-control" id="dateOfBirth" precision="day" value="${studentInstance?.dateOfBirth}" default="none" noSelection="['':'']"/>
		</div>

		<div class="form-group">
			<label for="nationality" class="control-label">Nationality</label>
			<select name="nationality"id="nationality" required="required" class="form-control">
				<option name="nationality" value="${com.edu.kist.sms.Student.Nationality.Nepali}">${com.edu.kist.sms.Student.Nationality.Nepali}</option>
				<option name="nationality"value="${com.edu.kist.sms.Student.Nationality.Indian}">${com.edu.kist.sms.Student.Nationality.Indian}</option>
			</select>
		</div>


		<div class="form-group">
			<label for="admissionDate"class="control-label">Admission Date</label>
			<g:datePicker name="admissionDate" class="form-control" precision="day" value="${studentInstance?.admissionDate}" default="none"noSelection="['':'']"/>
		</div>

		<div class="form-group">
			<label for="studentStatus" class="control-label">Student Status</label>
			<select name="studentStatus" id="studentStatus" required="" class="form-control">
				<option name="studentStatus" value="${Student.StudentStatus.New}">${com.edu.kist.sms.Student.StudentStatus.New}</option>
				<option name="studentStatus" value="${com.edu.kist.sms.Student.StudentStatus.Running}">${com.edu.kist.sms.Student.StudentStatus.Running}</option>
			</select>
		</div>


		<button class="btn btn-default"type="submit">Save</button>

	</g:form>
</div>




