<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#edit-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
    <div class="content-wrapper create">
        <div id="edit-project" class="content scaffold-edit" role="main">
            %{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.project}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.project}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header bg-gradient-lightblue theader">
                            <h2>Edit Project </h2>
                        </div>
            <g:form resource="${this.project}" method="PUT">
                <g:hiddenField name="version" value="${this.project?.version}" />

                <div class="card-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Project ID</label>
                        <input type="text" name="project_id" value="${this.project?.id}" class="form-control" id="exampleInputEmail1" >
                </div>
                <div class="form-group">
                    <label for="pname">Project Name</label>
                    <input type="text" value="${this.project?.project_name}" name="project_name" class="form-control" id="pname" >
                </div>
                <div class="form-group">
                    <label for="paddress">Project Address</label>
                    <input type="text" value="${this.project?.project_address}" name="project_address" class="form-control" id="paddress" >
                </div>
                <div class="form-group">
                    <label for="pdate">Project Date</label>
                    <g:datePicker name="project_date" value="${this.project?.project_date}" precision="day"/>
                </div>
                <g:submitButton name="save" class="save btn bg-gradient-lightblue" value="${message(code: 'default.button.update.label', default: 'Update')}" />

            </g:form>


                %{--<fieldset class="form">--}%
                    %{--<f:all bean="project"/>--}%
                %{--</fieldset>--}%
                %{--<fieldset class="buttons">--}%
                    %{--<input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />--}%
                %{--</fieldset>--}%

        </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    </body>
</html>
