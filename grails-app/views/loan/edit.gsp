<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'loan.label', default: 'Loan')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-loan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        %{--<div id="edit-loan" class="content scaffold-edit" role="main">--}%
            %{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
            %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<g:hasErrors bean="${this.loan}">--}%
            %{--<ul class="errors" role="alert">--}%
                %{--<g:eachError bean="${this.loan}" var="error">--}%
                %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
                %{--</g:eachError>--}%
            %{--</ul>--}%
            %{--</g:hasErrors>--}%
            %{--<g:form resource="${this.loan}" method="PUT">--}%
                %{--<g:hiddenField name="version" value="${this.loan?.version}" />--}%
                %{--<fieldset class="form">--}%
                    %{--<f:all bean="loan"/>--}%
                %{--</fieldset>--}%
                %{--<fieldset class="buttons">--}%
                    %{--<input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />--}%
                %{--</fieldset>--}%
            %{--</g:form>--}%
        %{--</div>--}%

    <div class="content-wrapper create">
        <div id="edit-loan" class="content scaffold-edit" role="main">
        %{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.loan}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.loan}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-gradient-green theader">
                                <h2>Edit loan </h2>
                            </div>
                            <g:form resource="${this.loan}" method="PUT">
                                <g:hiddenField name="version" value="${this.loan?.version}" />

                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="loan_number">Loan number</label>
                                        <input type="text" name="loan_number" value="${this.loan?.loan_number}" class="form-control" id="loan_number" >
                                    </div>
                                <div class="form-group">
                                    <label for="interest_rate">Interest Rate</label>
                                    <input type="text" value="${this.loan?.interest_rate}" name="interest_rate" class="form-control" id="interest_rate" >
                                </div>
                                <div class="form-group">
                                    <label for="penal_interest_rate">Penal Interest Rate </label>
                                    <input type="text" value="${this.loan?.penal_interest_rate}" name="penal_interest_rate" class="form-control" id="penal_interest_rate" >
                                </div>
                                <div class="form-group">
                                    <label for="approved_amount">Approved Amount </label>
                                    <input type="text" value="${this.loan?.approved_amount}" name="approved_amount" class="form-control" id="approved_amount" >
                                </div>
                                <div class="form-group">
                                    <label for="project_code">Project Code </label>
                                    <input type="text" value="${this.loan?.project_code}" name="project_code" class="form-control" id="project_code" >
                                </div>

                                <g:submitButton name="save" class="save btn bg-gradient-green" value="${message(code: 'default.button.update.label', default: 'Update')}" />

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
