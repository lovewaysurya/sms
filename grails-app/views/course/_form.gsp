



<%@ page import="com.edu.kist.sms.Course" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>Add New Courses</title>
	<meta name="layout" content="dashboard" />
</head>

<body>

<div class="jumbotron">
	<h2>Course  Information!</h2>
	<div class="row" >



		<div class="col-md-2"></div>
		<div class="col-md-8">
			<g:if test="${flash.message}">
				<div data-alert="alert" class="alert alert-danger fade in">
					<p>${flash.message}</p>
				</div>
			</g:if>
			<div class="panel panel-info">				<div class="panel-body">
					<g:form controller="course" action="save">

						<div class="form-group">
							<label for="CourseName" class="control-label">Course Name</label>
							<input type="text" value="${courseInstance?.courseName}" placeholder="Enter Course Name" id="CourseName" name="CourseName" class="form-control" required="true">
						</div>

						<div class="form-group">
							<label for="CourseCode" class="control-label">Course Code</label>
							<input type="text" value="${courseInstance?.courseCode}" placeholder="Enter Course Code" id="coursecode" name="CourseCode" class="form-control" required="true">
						</div>

						<div class="form-group">
							<label for="CourseAlias" class="control-label">Course Alias</label>
							<input type="text" placeholder="Enter Course Alias" id="CourseAlias" name="CourseAlias" class="form-control" required="true" value="${courseInstance?.courseAlias}">
						</div>

						<button class="btn btn-default" type="submit">Save</button>

					</g:form>

				</div>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>
</body>
</html>


%{--<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'activeStatus', 'error')} ">--}%
	%{--<label for="activeStatus">--}%
		%{--<g:message code="course.activeStatus.label" default="Active Status" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:checkBox name="activeStatus" value="${courseInstance?.activeStatus}" />--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseAlias', 'error')} required">--}%
	%{--<label for="courseAlias">--}%
		%{--<g:message code="course.courseAlias.label" default="Course Alias" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="courseAlias" required="" value="${courseInstance?.courseAlias}"/>--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseCode', 'error')} required">--}%
	%{--<label for="courseCode">--}%
		%{--<g:message code="course.courseCode.label" default="Course Code" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="courseCode" required="" value="${courseInstance?.courseCode}"/>--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseName', 'error')} required">--}%
	%{--<label for="courseName">--}%
		%{--<g:message code="course.courseName.label" default="Course Name" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="courseName" required="" value="${courseInstance?.courseName}"/>--}%

%{--</div>--}%

