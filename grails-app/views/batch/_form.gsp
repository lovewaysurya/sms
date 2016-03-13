<%@ page import="com.edu.kist.sms.Batch" %>
<g:form controller="batch" action="save">
    <div class="form-group">
    <label for="batchCourse" class="control-label">Batch Course </label>
    <g:textField name="batchCourse" class="form-control"></g:textField>

</div>

    <div class="form-group">
    <label for="batchName" class="control-label">Batch Name</label>
        <g:textField name="batchName" class="form-control"></g:textField>

    </div>
    <div class="form-group">
        <label for="batchAlias" class="control-label"> Batch Alias</label>
            <g:textField name="batchAlias" class="form-control"></g:textField>

    </div>
    <div class="form-group">
        <label for="academicYear" class="control-label">Academic Year </label>
        <g:datePicker name="academicYear" class="form-control"></g:datePicker>

    </div>

    <div class="form-group">
        <label for="startDate" class="control-label"> Start Date </label>
        <g:datePicker name="startDate" class="form-control"></g:datePicker>

    </div>
    <div class="form-group">
        <label for="endDate" class="control-label">End Date</label>
        <g:datePicker name="endDate" class="form-control"></g:datePicker>

    </div>
<button type="submit">save</button>
</g:form>



%{--<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'academicYear', 'error')} required">--}%
    %{--<label for="academicYear">--}%
        %{--<g:message code="batch.academicYear.label" default="Academic Year"/>--}%
        %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%
    %{--<g:datePicker name="academicYear" precision="day" value="${batchInstance?.academicYear}"/>--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'batchAlias', 'error')} required " >--}%
    %{--<label for="batchAlias">--}%
        %{--<g:message code="batch.batchAlias.label" default="Batch Alias"/>--}%
        %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%
    %{--<g:textField name="batchAlias" required="" value="${batchInstance?.batchAlias}"/>--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'batchCourse', 'error')} required">--}%
    %{--<label for="batchCourse">--}%
        %{--<g:message code="batch.batchCourse.label" default="Batch Course"/>--}%
        %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%
    %{--<g:textField name="batchCourse" required="" value="${batchInstance?.batchCourse}"/>--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'batchName', 'error')} required">--}%
    %{--<label for="batchName">--}%
        %{--<g:message code="batch.batchName.label" default="Batch Name"/>--}%
        %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%
    %{--<g:textField name="batchName" required="" value="${batchInstance?.batchName}"/>--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'endDate', 'error')} required">--}%
    %{--<label for="endDate">--}%
        %{--<g:message code="batch.endDate.label" default="End Date"/>--}%
        %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%
    %{--<g:datePicker name="endDate" precision="day" value="${batchInstance?.endDate}"/>--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: batchInstance, field: 'startDate', 'error')} required">--}%
    %{--<label for="startDate">--}%
        %{--<g:message code="batch.startDate.label" default="Start Date"/>--}%
        %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%
    %{--<g:datePicker name="startDate" precision="day" value="${batchInstance?.startDate}"/>--}%

%{--</div>--}%

