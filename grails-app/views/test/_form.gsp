<%@ page import="com.edu.kist.sms.Test" %>



<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="test.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${testInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="test.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${testInstance?.lastName}"/>

</div>

