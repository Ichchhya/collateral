<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>

    </head>
    <body>
        %{--<a href="#create-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
    <div class="content-wrapper create">
        <div id="create-company" class="content scaffold-create" role="main">
            %{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.company}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.company}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-gradient-info theader">
                                <h2>Company Form </h2>
                            </div>
                            <g:form resource="${this.company}" method="POST">
                                <div class="form-group">
                                <div class="card-body">
                                    %{--<div class="form-group">--}%
                                        %{--<label for="exampleInputEmail1">Company ID</label>--}%
                                        %{--<input type="text" name="company_id" class="form-control" id="exampleInputEmail1" placeholder="Enter company ID">--}%
                                    %{--</div>--}%
                                    <div class="form-group">
                                        <label for="coname">Company Name</label>
                                        <input type="text" name="company_name" class="form-control" id="coname" placeholder="Enter the company name">
                                    </div>
                                    <div class="form-group">
                                        <label for="caddress">Company Address</label>
                                        <input type="text" name="company_address" class="form-control" id="caddress" placeholder="Enter the company address">
                                    </div>
                                <div class="form-group">
                                        <label for="panno">Pan Number</label>
                                        <input type="text" name="pan_no" class="form-control" id="panno" placeholder="Enter the pan number">
                                    </div>

                                <g:submitButton name="index" class="save btn bg-gradient-info createbtn" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                            </g:form>
                        </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>


            %{--<g:form resource="${this.company}" method="POST">--}%
                %{--<fieldset class="form">--}%
                    %{--<f:all bean="company"/>--}%
                %{--</fieldset>--}%
                %{--<fieldset class="buttons">--}%
                    %{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
                %{--</fieldset>--}%
            %{--</g:form>--}%
        </div>
    </body>
</html>
