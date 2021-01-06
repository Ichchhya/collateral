<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'loansetup.label', default: 'Loansetup')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#edit-loansetup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%

    %{--<div class="content-wrapper create">--}%
        %{--<div id="edit-loansetup" class="content scaffold-edit" role="main">--}%
            %{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
            %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<g:hasErrors bean="${this.loansetup}">--}%
            %{--<ul class="errors" role="alert">--}%
                %{--<g:eachError bean="${this.loansetup}" var="error">--}%
                %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
                %{--</g:eachError>--}%
            %{--</ul>--}%
            %{--</g:hasErrors>--}%
            %{--<g:form resource="${this.loansetup}" method="PUT">--}%
                %{--<g:hiddenField name="version" value="${this.loansetup?.version}" />--}%
                %{--<fieldset class="form">--}%
                    %{--<f:all bean="loansetup"/>--}%
                %{--</fieldset>--}%
                %{--<fieldset class="buttons">--}%
                    %{--<input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />--}%
                %{--</fieldset>--}%
            %{--</g:form>--}%
        %{--</div>--}%
    %{--</div>--}%


    <div class="content-wrapper create">
        <div id="edit-loansetup" class="content scaffold-edit" role="main">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.loansetup}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.loansetup}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-gradient-secondary theader">
                                <h2>Edit loan Setup </h2>
                            </div>
                            <g:form resource="${this.loansetup}" method="PUT" action="update" controller="loansetup">
                                <g:hiddenField name="version" value="${this.loansetup?.version}" />

                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="loan_id">Loan Id</label>
                                        <input type="text" name="loan_id" value="${this.loansetup?.loan_id}" class="form-control" id="loan_id" >
                                    </div>
                                <div class="form-group">
                                    <label for="loan_type">Loan Type</label>
                                    <input type="text" value="${this.loansetup?.loan_type}" name="loan_type" class="form-control" id="loan_type" >
                                </div>

                                <g:submitButton name="save" resource="${this.loansetup}" action="update"  class="save btn bg-gradient-secondary" value="${message(code: 'default.button.update.label', default: 'Update')}" />

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
