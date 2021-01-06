<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'projectcategory.label', default: 'Projectcategory')}" />

        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#create-projectcategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        %{--<div id="create-projectcategory" class="content scaffold-create" role="main">--}%
            %{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
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
            %{--<g:form resource="${this.projectcategory}" method="POST">--}%
                %{--<fieldset class="form">--}%
                    %{--<f:all bean="projectcategory"/>--}%
                %{--</fieldset>--}%
                %{--<fieldset class="buttons">--}%
                    %{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
                %{--</fieldset>--}%
            %{--</g:form>--}%
        %{--</div>--}%

    <div class="content-wrapper create">
        <div id="create-projectcategory" class="content scaffold-create" role="main">
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
                                <h2>Create Project Category </h2>
                            </div>
                            <g:form resource="${this.projectcategory}" method="POST">
                                <div class="form-group">
                                <div class="card-body">

                                <div class="form-group">
                                    <label for="project_category_id">Project Category ID</label>
                                    <input type="text" name="project_category_id" class="form-control" id="project_category_id" placeholder="Enter the Project Category Id">
                                </div>
                                <div class="form-group">
                                    <label for="project_category"> Project Category</label>
                                    <input type="text" name="project_category" class="form-control" id="project_category" placeholder="Enter the Project Category">
                                </div>

                                <g:submitButton name="index" class="save btn bg-gradient-pink createbtn" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                            </g:form>
                        </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
