<%@ page import="com.edu.kist.sms.Subject" %>

<div class="container">
	<div class="col-md-2"></div>
	<dv class="col-md-8">
	<g:form controller="subject" action="save">
		<div class="form-group">
		<label for="subjectName" class="control-label">Subject Name</label>
			<input type="text" id="subjectName" name="subjectName" class="form-control" placeholder="enter subject name"/>
		</div>
		<div class="form-group">
			<label for="subjectCode" class="control-label">Subject Code</label>
			<input type="text" id="subjectCode" name="subjectCode" class="form-control" placeholder="enter subject name"/>
		</div>

		<button class="btn btn-primary" type="submit">Save</button>
	</g:form>
	</dv>
	<div class="col-md-2"></div>
</div>







%{--<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'subjectCode', 'error')} required">--}%
	%{--<label for="subjectCode">--}%
		%{--<g:message code="subject.subjectCode.label" default="Subject Code" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="subjectCode" required="" value="${subjectInstance?.subjectCode}"/>--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'subjectName', 'error')} required">--}%
	%{--<label for="subjectName">--}%
		%{--<g:message code="subject.subjectName.label" default="Subject Name" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="subjectName" required="" value="${subjectInstance?.subjectName}"/>--}%

%{--</div>--}%

