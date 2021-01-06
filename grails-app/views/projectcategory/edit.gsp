<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'projectcategory.label', default: 'Projectcategory')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#edit-projectcategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        %{--<div id="edit-projectcategory" class="content scaffold-edit" role="main">--}%
            %{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
            %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<g:hasErrors bean="${this.projectcategory}">--}%
            %{--<ul class="errors" role="alert">--}%
                %{--<g:eachError bean="${this.projectcategory}" var="error">--}%
                %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
                %{--</g:eachError>--}%
            %{--</ul>--}%
            %{--</g:hasErrors>--}%
            %{--<g:form resource="${this.projectcategory}" method="PUT">--}%
                %{--<g:hiddenField name="version" value="${this.projectcategory?.version}" />--}%
                %{--<fieldset class="form">--}%
                    %{--<f:all bean="projectcategory"/>--}%
                %{--</fieldset>--}%
                %{--<fieldset class="buttons">--}%
                    %{--<input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />--}%
                %{--</fieldset>--}%
            %{--</g:form>--}%
        %{--</div>--}%


    <div class="content-wrapper create">
        <div id="edit-projectcategory" class="content scaffold-edit" role="main">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.projectcategory}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.projectcategory}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-gradient-pink theader">
                                <h2>Edit Project Category </h2>
                            </div>
                            <g:form resource="${this.projectcategory}" method="PUT">
                                <g:hiddenField name="version" value="${this.projectcategory?.version}" />

                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="project_category_id">Project Category Id</label>
                                        <input type="text" name="project_category_id" value="${this.projectcategory?.project_category_id}" class="form-control" id="project_category_id" >
                                    </div>
                                <div class="form-group">
                                    <label for="project_category"> Project Category</label>
                                    <input type="text" value="${this.projectcategory?.project_category}" name="project_category" class="form-control" id="project_category" >
                                </div>

                                <g:submitButton name="save" class="save btn bg-gradient-pink" value="${message(code: 'default.button.update.label', default: 'Update')}" />

                            </g:form>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </body>
</html>
